{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tremulous-query";
          version = "1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Christoffer Öjeling <christoffer@ojeling.net>";
        author = "Christoffer Öjeling";
        homepage = "";
        url = "";
        synopsis = "Library for polling Tremulous servers";
        description = "A library for polling servers from the game Tremulous.\nSupports both the released 1.1 version and the 1.2 Gameplay Preview commonly known as GPP.";
        buildType = "Simple";
      };
      components = {
        tremulous-query = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.network
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.mtl
          ];
        };
      };
    }