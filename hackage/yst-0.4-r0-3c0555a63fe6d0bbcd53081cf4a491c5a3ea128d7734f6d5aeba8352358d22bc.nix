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
      identifier = { name = "yst"; version = "0.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/yst";
      url = "";
      synopsis = "Builds a static website from templates and data in YAML or\nCSV files.";
      description = "`yst` is a tool for generating a static website\nby filling string templates with data taken from\nYAML text files (or, alternatively, CSV files or\nfrom a Sqlite3 database).\nThis approach combines the speed, security, and\nease of deployment of a static website with the\nflexibility and maintainability of a dynamic site\nthat separates presentation and data.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yst" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            ];
          buildable = true;
          };
        };
      };
    }