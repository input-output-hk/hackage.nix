{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "calc";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Austin Seipp";
        homepage = "";
        url = "";
        synopsis = "A small compiler for arithmetic expressions.";
        description = "";
        buildType = "Custom";
      };
      components = {
        exes = {
          "calc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.harpy
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.haskell98
            ];
          };
        };
      };
    }