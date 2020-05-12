{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "continued-fraction"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/continued-fraction#readme";
      url = "";
      synopsis = "Types and functions for working with continued fractions in Haskell";
      description = "This package provides facilities for working with both continued fractions\nand rational approximants. It uses lists internally, so it will probably\nnot be fast if you need large convergents.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          ];
        buildable = true;
        };
      tests = {
        "continued-fractions-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."continued-fraction" or (errorHandler.buildDepError "continued-fraction"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "continued-fractions-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."continued-fraction" or (errorHandler.buildDepError "continued-fraction"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }