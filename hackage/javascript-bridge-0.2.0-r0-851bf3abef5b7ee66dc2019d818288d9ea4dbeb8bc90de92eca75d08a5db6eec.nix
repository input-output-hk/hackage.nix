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
      identifier = { name = "javascript-bridge"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016-2019 The University of Kansas";
      maintainer = "andygill@ku.edu";
      author = "Andy Gill";
      homepage = "";
      url = "";
      synopsis = "Remote Monad for JavaScript on the browser";
      description = "Bridge from Haskell to JavaScript on the browser";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-websockets" or (errorHandler.buildDepError "wai-websockets"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ];
        buildable = true;
        };
      exes = {
        "javascript-bridge-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."javascript-bridge" or (errorHandler.buildDepError "javascript-bridge"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            ];
          buildable = true;
          };
        "javascript-bridge-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."javascript-bridge" or (errorHandler.buildDepError "javascript-bridge"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "javascript-bridge-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."javascript-bridge" or (errorHandler.buildDepError "javascript-bridge"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }