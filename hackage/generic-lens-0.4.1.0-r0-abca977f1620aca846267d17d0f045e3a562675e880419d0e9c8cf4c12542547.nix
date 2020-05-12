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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "generic-lens"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kiss.csongor.kiss@gmail.com";
      author = "Csongor Kiss";
      homepage = "https://github.com/kcsongor/generic-lens";
      url = "";
      synopsis = "Generic data-structure operations exposed as lenses.";
      description = "This package uses the GHC 8 Generic representation to derive various operations on data structures with a lens interface, including structural subtype relationship between records and positional indexing into arbitrary product types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
        buildable = true;
        };
      tests = {
        "generic-lens-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "generic-lens-bench" = {
          depends = [
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = true;
          };
        };
      };
    }