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
      identifier = { name = "remote-json-server"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 The University of Kansas";
      maintainer = "JDawson@ku.edu";
      author = "Justin Dawson and Andy Gill";
      homepage = "";
      url = "";
      synopsis = "Web server wrapper for remote-json";
      description = "Web server, using scotty, for the JSON RPC protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."natural-transformation" or (errorHandler.buildDepError "natural-transformation"))
          (hsPkgs."remote-json" or (errorHandler.buildDepError "remote-json"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }