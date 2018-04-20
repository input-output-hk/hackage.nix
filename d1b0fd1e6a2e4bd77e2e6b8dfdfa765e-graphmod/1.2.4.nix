{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "graphmod";
          version = "1.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "iavor.diatchki@gmail.com";
        author = "Iavor S. Diatchki";
        homepage = "http://github.com/yav/graphmod";
        url = "";
        synopsis = "Present the module dependencies of a program as a \"dot\" graph.";
        description = "This package contains a program that computes \"dot\" graphs\nfrom the dependencies of a number of Haskell modules.";
        buildType = "Simple";
      };
      components = {
        exes = {
          graphmod = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.dotgen
              hsPkgs.haskell-lexer
              hsPkgs.containers
            ];
          };
        };
      };
    }