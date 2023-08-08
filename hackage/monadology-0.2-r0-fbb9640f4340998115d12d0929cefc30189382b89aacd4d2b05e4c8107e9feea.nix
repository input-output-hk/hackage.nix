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
      specVersion = "2.2";
      identifier = { name = "monadology"; version = "0.2"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2017-2023 Ashley Yakeley";
      maintainer = "<ashley@semantic.org>";
      author = "Ashley Yakeley";
      homepage = "https://github.com/AshleyYakeley/monadology#readme";
      url = "";
      synopsis = "The best ideas in monad-related classes and types.";
      description = "Monadology is intended as a collection of the best ideas in monad-related classes and types, with a focus on correctness and elegance, and theoretical understanding, rather than practical performance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."invariant" or (errorHandler.buildDepError "invariant"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."type-rig" or (errorHandler.buildDepError "type-rig"))
          (hsPkgs."witness" or (errorHandler.buildDepError "witness"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monadology" or (errorHandler.buildDepError "monadology"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }