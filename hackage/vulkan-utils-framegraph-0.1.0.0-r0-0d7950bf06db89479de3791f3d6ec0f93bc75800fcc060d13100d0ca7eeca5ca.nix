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
      identifier = { name = "vulkan-utils-framegraph"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "IC Rainbow <aenor.realm@gmail.com>";
      author = "";
      homepage = "https://github.com/haskell-game/vulkan#readme";
      url = "";
      synopsis = "Vulkan barrier-placement and resource adapter for the fragr frame graph";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fragr" or (errorHandler.buildDepError "fragr"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
          (hsPkgs."vulkan-utils" or (errorHandler.buildDepError "vulkan-utils"))
        ];
        buildable = true;
      };
      tests = {
        "vulkan-utils-framegraph-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fragr" or (errorHandler.buildDepError "fragr"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
            (hsPkgs."vulkan-utils-framegraph" or (errorHandler.buildDepError "vulkan-utils-framegraph"))
          ];
          buildable = true;
        };
      };
    };
  }