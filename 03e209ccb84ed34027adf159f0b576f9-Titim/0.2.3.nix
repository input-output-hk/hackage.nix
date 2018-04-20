{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Titim";
          version = "0.2.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "notjefff@gmail.com";
        author = "Jefffrey";
        homepage = "";
        url = "";
        synopsis = "Game for Lounge Marmelade";
        description = "Game for Lounge Marmelade";
        buildType = "Simple";
      };
      components = {
        exes = {
          titim = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.matrix
              hsPkgs.containers
            ];
          };
        };
      };
    }