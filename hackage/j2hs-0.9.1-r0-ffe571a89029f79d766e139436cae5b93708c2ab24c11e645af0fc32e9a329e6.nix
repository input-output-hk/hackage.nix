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
      identifier = { name = "j2hs"; version = "0.9.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "j2hs";
      description = "j2hs";
      buildType = "Custom";
    };
    components = {
      exes = {
        "j2hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hinduce-missingh" or (errorHandler.buildDepError "hinduce-missingh"))
            (hsPkgs."java-bridge" or (errorHandler.buildDepError "java-bridge"))
            (hsPkgs."java-bridge-extras" or (errorHandler.buildDepError "java-bridge-extras"))
            (hsPkgs."java-reflect" or (errorHandler.buildDepError "java-reflect"))
            (hsPkgs."haskell-reflect" or (errorHandler.buildDepError "haskell-reflect"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."named-records" or (errorHandler.buildDepError "named-records"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."multimap" or (errorHandler.buildDepError "multimap"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."strings" or (errorHandler.buildDepError "strings"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }