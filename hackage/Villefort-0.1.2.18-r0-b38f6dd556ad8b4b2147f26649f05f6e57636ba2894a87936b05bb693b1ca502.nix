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
      identifier = { name = "Villefort"; version = "0.1.2.18"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alice Reuter";
      maintainer = "alice@alicereuter.com";
      author = "Alice Reuter";
      homepage = "https://github.com/alicereuter/Villefort#readme";
      url = "";
      synopsis = "Villefort is a task manager and time tracker";
      description = "Villefort is a web based time tracker built around a portable sqlite3 database.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
        buildable = true;
        };
      exes = {
        "Villefort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Villefort" or (errorHandler.buildDepError "Villefort"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Villefort-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Villefort" or (errorHandler.buildDepError "Villefort"))
            (hsPkgs."concurrent-extra" or (errorHandler.buildDepError "concurrent-extra"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."webdriver" or (errorHandler.buildDepError "webdriver"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            ];
          buildable = true;
          };
        };
      };
    }