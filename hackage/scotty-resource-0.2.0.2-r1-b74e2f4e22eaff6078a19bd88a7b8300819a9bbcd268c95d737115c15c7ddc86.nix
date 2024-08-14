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
      identifier = { name = "scotty-resource"; version = "0.2.0.2"; };
      license = "Apache-2.0";
      copyright = "2016 - Rick Owens";
      maintainer = "rick@owenssoftware.com";
      author = "Rick Owens";
      homepage = "https://github.com/taphu/scotty-resource";
      url = "";
      synopsis = "[Deprecated] A Better way of modeling web resources.";
      description = "Notice: This package is deprecated because I no longer\nmaintain it. If you would like to take it over I\nam happy to entertain requests.\nAllows users of the Scotty web framework to model\nresources more like the HTTP standard models them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
    };
  }