{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      fast-bignum = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HsOpenSSL";
          version = "0.10.3.6";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho at cielonegro dot org>";
        author = "Adam Langley, Mikhail Vorozhtsov, PHO, Taru Karttunen";
        homepage = "https://github.com/phonohawk/HsOpenSSL";
        url = "";
        synopsis = "Partial OpenSSL binding for Haskell";
        description = "\nHsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA\nand DSA keys, read and write PEM files, generate message digests,\nsign and verify messages, encrypt and decrypt messages. It has\nalso some capabilities of creating SSL clients and servers.\n\nThis package is in production use by a number of Haskell based\nsystems and stable. You may also be interested in the @tls@ package,\n<http://hackage.haskell.org/package/tls>, which is a pure Haskell\nimplementation of SSL.\n";
        buildType = "Simple";
      };
      components = {
        HsOpenSSL = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.ghc-prim
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.time
          ] ++ (if _flags.fast-bignum && (compiler.isGhc && compiler.version.ge "6.11")
            then [ hsPkgs.integer-gmp ]
            else [ hsPkgs.integer ]);
          libs = if system.isWindows
            then [ pkgs.eay32 pkgs.ssl32 ]
            else [ pkgs.crypto pkgs.ssl ];
        };
      };
    }