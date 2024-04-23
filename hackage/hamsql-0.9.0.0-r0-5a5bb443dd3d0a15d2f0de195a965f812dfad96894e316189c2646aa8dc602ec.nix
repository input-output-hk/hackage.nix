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
      specVersion = "1.20";
      identifier = { name = "hamsql"; version = "0.9.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014-2016 Michael Herold et al.";
      maintainer = "Michael Herold <quabla@hemio.de>";
      author = "Michael Herold <quabla@hemio.de>";
      homepage = "https://git.hemio.de/hemio/hamsql";
      url = "";
      synopsis = "Interpreter for SQL-structure definitions in YAML (YamSql)";
      description = "Interpreter for SQL-structure definitions in YAML (YamSql)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."doctemplates" or (errorHandler.buildDepError "doctemplates"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."frontmatter" or (errorHandler.buildDepError "frontmatter"))
          (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      exes = {
        "hamsql" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hamsql" or (errorHandler.buildDepError "hamsql"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hamsql-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hamsql" or (errorHandler.buildDepError "hamsql"))
          ];
          buildable = true;
        };
      };
    };
  }