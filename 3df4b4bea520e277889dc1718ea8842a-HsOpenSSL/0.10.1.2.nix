{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HsOpenSSL";
          version = "0.10.1.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho at cielonegro dot org>";
        author = "Adam Langley, Mikhail Vorozhtsov, PHO, Taru Karttunen";
        homepage = "https://github.com/phonohawk/HsOpenSSL";
        url = "";
        synopsis = "(Incomplete) OpenSSL binding for Haskell";
        description = "HsOpenSSL is an (incomplete) OpenSSL binding for Haskell. It can\ngenerate RSA and DSA keys, read and write PEM files, generate\nmessage digests, sign and verify messages, encrypt and decrypt\nmessages. It has also some capabilities of creating SSL clients\nand servers.";
        buildType = "Simple";
      };
      components = {
        "HsOpenSSL" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.ghc-prim
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.network
          ] ++ (if compiler.isGhc && compiler.version.ge "6.11"
            then [ hsPkgs.integer-gmp ]
            else [ hsPkgs.integer ]);
          libs = if system.isWindows
            then [ pkgs.eay32 pkgs.ssl32 ]
            else [ pkgs.crypto pkgs.ssl ];
        };
      };
    }