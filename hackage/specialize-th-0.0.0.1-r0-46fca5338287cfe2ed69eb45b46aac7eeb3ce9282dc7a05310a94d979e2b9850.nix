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
      specVersion = "1.8";
      identifier = { name = "specialize-th"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/specialize-th";
      url = "";
      synopsis = "Create specialized types from polymorphic ones using TH";
      description = "Very Alpha. Minimal Testing. Will test more this week.     ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
          (hsPkgs."newtype-th" or (errorHandler.buildDepError "newtype-th"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."type-sub-th" or (errorHandler.buildDepError "type-sub-th"))
          (hsPkgs."universe-th" or (errorHandler.buildDepError "universe-th"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."DebugTraceHelpers" or (errorHandler.buildDepError "DebugTraceHelpers"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
            (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
            (hsPkgs."newtype-th" or (errorHandler.buildDepError "newtype-th"))
            (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."type-sub-th" or (errorHandler.buildDepError "type-sub-th"))
            (hsPkgs."universe-th" or (errorHandler.buildDepError "universe-th"))
            ];
          buildable = true;
          };
        };
      };
    }