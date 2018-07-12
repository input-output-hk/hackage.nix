{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "step-function";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jon.petter.bergman@gmail.com";
        author = "Petter Bergman";
        homepage = "https://github.com/jonpetterbergman/step-function";
        url = "";
        synopsis = "Step functions, staircase functions or piecewise constant functions";
        description = "Step functions, staircase functions or piecewise constant functions.\nImplemented as a default value and a series of transitions. Supports\nmerging two step functions using a supplied merging function.";
        buildType = "Simple";
      };
      components = {
        "step-function" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "merge" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.step-function
              hsPkgs.QuickCheck
              hsPkgs.cabal-test-quickcheck
            ];
          };
        };
      };
    }