{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      fast-bignum = true;
      homebrew-openssl = false;
      macports-openssl = false;
      };
    package = {
      specVersion = "1.12";
      identifier = { name = "HsOpenSSL"; version = "0.11.4.9"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Vladimir Shabanov <vshabanoff@gmail.com>";
      author = "Adam Langley, Mikhail Vorozhtsov, PHO, Taru Karttunen";
      homepage = "https://github.com/vshabanov/HsOpenSSL";
      url = "";
      synopsis = "Partial OpenSSL binding for Haskell";
      description = "\nHsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA\nand DSA keys, read and write PEM files, generate message digests,\nsign and verify messages, encrypt and decrypt messages. It has\nalso some capabilities of creating SSL clients and servers.\n\nThis package is in production use by a number of Haskell based\nsystems and stable. You may also be interested in the @tls@ package,\n<http://hackage.haskell.org/package/tls>, which is a pure Haskell\nimplementation of SSL.\n";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ] ++ (pkgs.lib).optional (flags.fast-bignum && (compiler.isGhc && (compiler.version).ge "7.10.1")) (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"));
        libs = if system.isWindows
          then (pkgs.lib).optionals (system.isX86_64) [
            (pkgs."eay32" or ((hsPkgs.pkgs-errors).sysDepError "eay32"))
            (pkgs."ssl" or ((hsPkgs.pkgs-errors).sysDepError "ssl"))
            ] ++ (pkgs.lib).optionals (system.isI386) [
            (pkgs."eay32" or ((hsPkgs.pkgs-errors).sysDepError "eay32"))
            (pkgs."ssl32" or ((hsPkgs.pkgs-errors).sysDepError "ssl32"))
            ]
          else [
            (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
            (pkgs."ssl" or ((hsPkgs.pkgs-errors).sysDepError "ssl"))
            ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test-dsa" = {
          depends = [
            (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "test-der" = {
          depends = [
            (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "test-evp-base64" = {
          depends = [
            (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "test-evp-digest" = {
          depends = [
            (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }