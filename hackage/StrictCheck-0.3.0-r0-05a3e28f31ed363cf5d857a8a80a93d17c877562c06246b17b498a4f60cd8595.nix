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
      identifier = { name = "StrictCheck"; version = "0.3.0"; };
      license = "MIT";
      copyright = "(c) 2018 Kenneth Foner, Hengchu Zhang, and Leo Lampropoulos";
      maintainer = "kwf@very.science";
      author = "Kenneth Foner, Hengchu Zhang, and Leo Lampropoulos";
      homepage = "https://github.com/kwf/StrictCheck#readme";
      url = "";
      synopsis = "StrictCheck: Keep Your Laziness In Check";
      description = "StrictCheck is a property-based random testing framework for\nobserving, specifying, and testing the strictness behaviors of Haskell\nfunctions. Strictness behavior is traditionally considered a non-functional\nproperty; StrictCheck allows it to be tested as if it were one, by reifying\ndemands on data structures so they can be manipulated and examined within\nHaskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "test-strictcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."StrictCheck" or (errorHandler.buildDepError "StrictCheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }