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
    flags = { mysql = false; sqlite = false; base3 = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HXQ"; version = "0.20.1"; };
      license = "BSD-3-Clause";
      copyright = "2008-2016 Leonidas Fegaras";
      maintainer = "Leonidas Fegaras <fegaras@cse.uta.edu>";
      author = "Leonidas Fegaras";
      homepage = "http://lambda.uta.edu/HXQ/";
      url = "";
      synopsis = "A Compiler from XQuery to Haskell";
      description = "HXQ is a fast and space-efficient compiler from XQuery (the standard\nquery language for XML) to embedded Haskell code. The translation is\nbased on Haskell templates. It also provides an interpreter for\nevaluating XQueries from input and an optional database connectivity\nusing HDBC with MySQL/ODBC or sqlite3.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ (if flags.mysql
          then [
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-odbc" or (errorHandler.buildDepError "HDBC-odbc"))
            ]
          else (pkgs.lib).optionals (flags.sqlite) [
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            ]);
        buildable = true;
        };
      };
    }