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
      identifier = { name = "servant-scotty"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora SEA";
      maintainer = "alp@zalora.com";
      author = "Alp Mestanogullari";
      homepage = "http://github.com/zalora/servant";
      url = "";
      synopsis = "Generate a web service for servant 'Resource's using scotty and JSON";
      description = "Generate a web service for servant 'Resource's using scotty and JSON";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-response" or (errorHandler.buildDepError "servant-response"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }