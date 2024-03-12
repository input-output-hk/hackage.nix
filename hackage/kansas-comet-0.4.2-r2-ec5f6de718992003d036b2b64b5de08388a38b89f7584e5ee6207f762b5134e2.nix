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
      identifier = { name = "kansas-comet"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 The University of Kansas";
      maintainer = "Andrew Gill <andygill@ku.edu>";
      author = "Andrew Gill <andygill@ku.edu>, Andrew Farmer <anfarmer@ku.edu>";
      homepage = "https://github.com/ku-fpg/kansas-comet/";
      url = "";
      synopsis = "A JavaScript push mechanism based on the comet idiom";
      description = "A transport-level remote JavaScript RESTful push mechanism.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }