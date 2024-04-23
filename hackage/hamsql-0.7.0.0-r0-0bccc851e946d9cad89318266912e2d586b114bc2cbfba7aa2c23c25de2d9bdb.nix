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
      identifier = { name = "hamsql"; version = "0.7.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014-2016 Michael Herold et al.";
      maintainer = "Michael Herold <quabla@hemio.de>";
      author = "Michael Herold <quabla@hemio.de>";
      homepage = "https://git.hemio.de/hemio/hamsql";
      url = "";
      synopsis = "HamSql";
      description = "Interpreter for SQL-structure definitions in Yaml (YamSql)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."frontmatter" or (errorHandler.buildDepError "frontmatter"))
          (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
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