{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lambda-calculator";
        version = "0.5.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "lambda-calculator" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lambda-calculator)
            (hsPkgs.Shellac)
            (hsPkgs.Shellac-readline)
          ];
        };
      };
      tests = {
        "lambda-calculus-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lambda-calculator)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }