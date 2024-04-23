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
      specVersion = "1.12";
      identifier = { name = "scheduling"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Tom Lippincott";
      maintainer = "tom.lippincott@jhu.edu";
      author = "Tom Lippincott";
      homepage = "https://github.com/TomLippincott/scheduling#readme";
      url = "";
      synopsis = "An interview scheduler using constraint satisfaction and Google Sheets";
      description = "Primarily a command-line tool for specifying people, their availabilities,\nand desired meetings, finding the best solution to this scheduling task,\nand a few other niceties, all directly in a Google Sheets spreadsheet\nso it's easy to edit collaboratively and view the results.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gogol" or (errorHandler.buildDepError "gogol"))
          (hsPkgs."gogol-sheets" or (errorHandler.buildDepError "gogol-sheets"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "scheduler" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gogol" or (errorHandler.buildDepError "gogol"))
            (hsPkgs."gogol-sheets" or (errorHandler.buildDepError "gogol-sheets"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
            (hsPkgs."scheduling" or (errorHandler.buildDepError "scheduling"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }