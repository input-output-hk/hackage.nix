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
      specVersion = "1.12";
      identifier = { name = "eventsource-store-specs"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yo.eight@gmail.com";
      author = "Yorick Laupa";
      homepage = "https://gitlab.com/YoEight/eventsource-api-hs";
      url = "";
      synopsis = "Provides common test specification for Store implementation.";
      description = "Provides common test specification for Store implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."eventsource-api" or (errorHandler.buildDepError "eventsource-api"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }