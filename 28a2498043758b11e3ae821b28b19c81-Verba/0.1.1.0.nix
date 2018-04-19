{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Verba";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tpigarelli@gmail.com";
        author = "Jefffrey";
        homepage = "";
        url = "";
        synopsis = "A solver for the WordBrain game";
        description = "A solver for the WordBrain game";
        buildType = "Simple";
      };
      components = {
        exes = {
          Verba = {
            depends  = [
              hsPkgs.base
              hsPkgs.matrix
              hsPkgs.containers
            ];
          };
        };
      };
    }