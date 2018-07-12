{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mfsolve";
          version = "0.3.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Kristof Bastiaensen (2015)";
        maintainer = "Kristof Bastiaensen";
        author = "Kristof Bastiaensen";
        homepage = "";
        url = "";
        synopsis = "Equation solver and calculator à la metafont";
        description = "An equation solver and calculator in the spirit of Metafont.\n\nLike metafont, it can solve linear equations, and evaluate nonlinear expressions.  In addition to metafont, it also solves for angles, and makes the solution independend of the order of the equations.";
        buildType = "Simple";
      };
      components = {
        "mfsolve" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.mtl
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.mfsolve
            ];
          };
        };
      };
    }