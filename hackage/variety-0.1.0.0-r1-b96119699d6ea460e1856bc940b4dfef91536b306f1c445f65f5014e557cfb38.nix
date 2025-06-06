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
      specVersion = "3.0";
      identifier = { name = "variety"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "nbos@nbos.ca";
      author = "nbos";
      homepage = "https://github.com/nbos/variety";
      url = "";
      synopsis = "integer arithmetic codes";
      description = "The @Variety@ module provides functions to optimally encode and decode sequences\nof value-base pairs assuming uniform probability.\n\nIf codes get too large and slow to process, @Variety.Bounded@ provides similar\ninterface with a precision parameter at small cost to code length.\n\nThe @Combinatorics@ module provides functions to optimally encode and decode\ncommon combinatorial objects through ranking and unranking.\n\nThe @Elias@ module provides entirely non-parametric encoding and decoding of\npositive integers. The usual definition doesn't allow for an encoding of 0, so a\nmapping is baked into the functions in @Elias.Natural@ that shifts the number line\nby 1.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exact-combinatorics" or (errorHandler.buildDepError "exact-combinatorics"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
        ];
        buildable = true;
      };
      tests = {
        "variety-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."variety" or (errorHandler.buildDepError "variety"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }