{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "structural-traversal";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nboldi@elte.com";
        author = "Boldizsár Németh";
        homepage = "http://github.com/nboldi/structural-traversal#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "structural-traversal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
          ];
        };
        tests = {
          "smart-traversal-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.structural-traversal
              hsPkgs.mtl
            ];
          };
        };
      };
    }