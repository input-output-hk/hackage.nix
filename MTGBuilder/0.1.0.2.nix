{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "MTGBuilder";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "elvishjerricco@gmail.com";
        author = "ElvishJerricco";
        homepage = "";
        url = "";
        synopsis = "Builds decks out of a meta";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          mtg-builder = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
        };
      };
    }