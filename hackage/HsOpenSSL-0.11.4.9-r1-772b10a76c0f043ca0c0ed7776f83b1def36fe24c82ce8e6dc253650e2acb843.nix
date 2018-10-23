{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      fast-bignum = true;
      homebrew-openssl = false;
      macports-openssl = false;
    };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "HsOpenSSL";
        version = "0.11.4.9";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Vladimir Shabanov <vshabanoff@gmail.com>";
      author = "Adam Langley, Mikhail Vorozhtsov, PHO, Taru Karttunen";
      homepage = "https://github.com/vshabanov/HsOpenSSL";
      url = "";
      synopsis = "Partial OpenSSL binding for Haskell";
      description = "\nHsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA\nand DSA keys, read and write PEM files, generate message digests,\nsign and verify messages, encrypt and decrypt messages. It has\nalso some capabilities of creating SSL clients and servers.\n\nThis package is in production use by a number of Haskell based\nsystems and stable. You may also be interested in the @tls@ package,\n<http://hackage.haskell.org/package/tls>, which is a pure Haskell\nimplementation of SSL.\n";
      buildType = "Custom";
    };
    components = {
      "HsOpenSSL" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (flags.fast-bignum && (compiler.isGhc && compiler.version.ge "7.10.1")) (hsPkgs.integer-gmp);
        libs = if system.isWindows
          then pkgs.lib.optionals (system.isX86_64) [
            (pkgs."eay32")
            (pkgs."ssl")
          ] ++ pkgs.lib.optionals (system.isI386) [
            (pkgs."eay32")
            (pkgs."ssl32")
          ]
          else [
            (pkgs."crypto")
            (pkgs."ssl")
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "test-dsa" = {
          depends  = [
            (hsPkgs.HsOpenSSL)
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ];
        };
        "test-der" = {
          depends  = [
            (hsPkgs.HsOpenSSL)
            (hsPkgs.base)
          ];
        };
        "test-evp-base64" = {
          depends  = [
            (hsPkgs.HsOpenSSL)
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ];
        };
        "test-evp-digest" = {
          depends  = [
            (hsPkgs.HsOpenSSL)
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }