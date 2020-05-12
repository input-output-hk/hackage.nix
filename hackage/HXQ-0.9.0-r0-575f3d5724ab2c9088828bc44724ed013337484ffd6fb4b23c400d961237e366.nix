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
    flags = { db = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HXQ"; version = "0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "2008, Leonidas Fegaras";
      maintainer = "fegaras@cse.uta.edu";
      author = "Leonidas Fegaras";
      homepage = "http://lambda.uta.edu/HXQ/";
      url = "";
      synopsis = "A Compiler from XQuery to Haskell";
      description = "HXQ is a fast and space-efficient compiler from XQuery (the standard\nquery language for XML) to embedded Haskell code. The translation is\nbased on Haskell templates. It also provides an interpreter for\nevaluating XQueries from input and an optional database connectivity\nusing HDBC and SQLite3.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."readline" or (errorHandler.buildDepError "readline"))) ++ (pkgs.lib).optionals (flags.db) [
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
          ];
        buildable = true;
        };
      exes = {
        "xquery" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."readline" or (errorHandler.buildDepError "readline"))) ++ (pkgs.lib).optionals (flags.db) [
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            ];
          buildable = true;
          };
        };
      };
    }