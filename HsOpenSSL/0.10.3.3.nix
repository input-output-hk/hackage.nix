{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      fast-bignum = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HsOpenSSL";
          version = "0.10.3.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho at cielonegro dot org>";
        author = "Adam Langley, Mikhail Vorozhtsov, PHO, Taru Karttunen";
        homepage = "https://github.com/phonohawk/HsOpenSSL";
        url = "";
        synopsis = "(Incomplete) OpenSSL binding for Haskell";
        description = "\nHsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA\nand DSA keys, read and write PEM files, generate message digests,\nsign and verify messages, encrypt and decrypt messages. It has\nalso some capabilities of creating SSL clients and servers.\n\nPlease note that this project has started at the time when there\nwere no pure-Haskell implementations of TLS. Now there is tls\npackage (<http://hackage.haskell.org/package/tls>), which looks\npretty saner than HsOpenSSL especially for initialisation and\nerror handlings. So PHO (the initial author of HsOpenSSL) wants to\nencourage you to use and improve the tls package instead as long\nas possible. The only problem is that the tls package has not\nreceived as much review as OpenSSL from cryptography specialists\nyet, thus we can't assume it's secure enough.\n";
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
          ] ++ (if _flags.fast-bignum && compiler.isGhc
            then [ hsPkgs.integer-gmp ]
            else [ hsPkgs.integer ]);
          libs = if system.isWindows
            then [ pkgs.eay32 pkgs.ssl32 ]
            else [ pkgs.crypto pkgs.ssl ];
        };
      };
    }