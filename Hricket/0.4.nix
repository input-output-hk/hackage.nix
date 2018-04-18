{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hricket";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Anthony Simpson";
        maintainer = "DiscipleRayne@gmail.com";
        author = "Anthony Simpson";
        homepage = "http://github.com/Raynes/Hricket";
        url = "";
        synopsis = "A Cricket scoring application.";
        description = "An application to help with scoring Cricket dart games.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hricket = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
            ];
          };
        };
      };
    }