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
      identifier = { name = "task"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sean.seefried@gmail.com";
      author = "Sean Seefried";
      homepage = "";
      url = "";
      synopsis = "A command line tool for keeping track of tasks you worked on";
      description = "'task' is a simple command line tool for keeping track of\ntasks you are working on. Tasks are kept in a simple\npersistent store. Each task can be tagged with arbitrary\nkey/value pairs and the results can be exported to CSV files\nfiltered on said key/value pairs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "task" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."csv-enumerator" or (errorHandler.buildDepError "csv-enumerator"))
          ];
          buildable = true;
        };
      };
    };
  }