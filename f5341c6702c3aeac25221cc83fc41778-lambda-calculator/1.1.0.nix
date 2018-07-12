{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lambda-calculator";
          version = "1.1.0";
        };
        license = "MIT";
        copyright = "2016 Sean Gillespie";
        maintainer = "sean@mistersg.net";
        author = "Sean D Gillespie";
        homepage = "https://github.com/sgillespie/lambda-calculus#readme";
        url = "";
        synopsis = "A lambda calculus interpreter";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "lambda-calculator" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
        exes = {
          "lambda-calculator" = {
            depends  = [
              hsPkgs.base
              hsPkgs.lambda-calculator
              hsPkgs.optparse-applicative
              hsPkgs.Shellac
              hsPkgs.Shellac-readline
            ];
          };
        };
        tests = {
          "lambda-calculus-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.lambda-calculator
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
          "lambda-calculus-lint" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }