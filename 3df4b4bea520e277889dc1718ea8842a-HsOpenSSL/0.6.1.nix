{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HsOpenSSL";
          version = "0.6.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho at cielonegro.org>";
        author = "Adam Langley <agl at imperialviolet.org>, PHO <pho at cielonegro.org>";
        homepage = "http://cielonegro.org/HsOpenSSL.html";
        url = "";
        synopsis = "(Incomplete) OpenSSL binding for Haskell";
        description = "HsOpenSSL is an (incomplete) OpenSSL binding for Haskell. It\ncan generate RSA and DSA keys, read and write PEM files,\ngenerate message digests, sign and verify messages, encrypt\nand decrypt messages.";
        buildType = "Configure";
      };
      components = {
        "HsOpenSSL" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.ghc-prim
            hsPkgs.integer
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.network
          ];
        };
      };
    }