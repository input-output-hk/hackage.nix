{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "coverage";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "(c) 2015 Nicolas Del Piano";
      maintainer = "Nicolas Del Piano <ndel314@gmail.com>";
      author = "Nicolas Del Piano <ndel314@gmail.com>";
      homepage = "https://github.com/nicodelpiano/coverage";
      url = "";
      synopsis = "Exhaustivity Checking Library";
      description = "A library for exhaustivity and redundancy checking.";
      buildType = "Simple";
    };
    components = {
      "coverage" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.coverage)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }