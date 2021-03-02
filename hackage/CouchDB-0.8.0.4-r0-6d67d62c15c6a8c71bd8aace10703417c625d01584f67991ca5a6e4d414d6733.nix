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
      specVersion = "1.2";
      identifier = { name = "CouchDB"; version = "0.8.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Arjun Guha and Brendan Hickey";
      maintainer = "Arjun Guha <arjun@cs.brown.edu>";
      author = "Arjun Guha, Brendan Hickey";
      homepage = "http://github.com/arjunguha/haskell-couchdb/";
      url = "";
      synopsis = "CouchDB interface";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ];
        buildable = true;
        };
      };
    }