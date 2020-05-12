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
      identifier = { name = "fathead-util"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2016 Ben Moon";
      maintainer = "guiltydolphin@gmail.com";
      author = "Ben Moon";
      homepage = "https://github.com/guiltydolphin/fathead-util";
      url = "";
      synopsis = "Utilities for working with DuckDuckHack's FatHead Instant Answers";
      description = "Utilities for working with DuckDuckHack's FatHead Instant Answers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }