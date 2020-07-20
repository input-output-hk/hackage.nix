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
      identifier = {
        name = "relational-query-postgresql-pure";
        version = "0.1.1.0";
        };
      license = "BSD-3-Clause";
      copyright = "2020 Kazuki Okamoto (岡本和樹), 2013 Kei Hibino";
      maintainer = "kazuki.okamoto@kakkun61.com";
      author = "Kazuki Okamoto (岡本和樹)";
      homepage = "https://github.com/kakkun61/relational-query-postgresql-pure#readme";
      url = "";
      synopsis = "The connector of relational-record and postgresql-pure.";
      description = "You can use postgresql-pure as the backend of relational-record without the HDBC interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."homotuple" or (errorHandler.buildDepError "homotuple"))
          (hsPkgs."list-tuple" or (errorHandler.buildDepError "list-tuple"))
          (hsPkgs."names-th" or (errorHandler.buildDepError "names-th"))
          (hsPkgs."persistable-record" or (errorHandler.buildDepError "persistable-record"))
          (hsPkgs."postgresql-placeholder-converter" or (errorHandler.buildDepError "postgresql-placeholder-converter"))
          (hsPkgs."postgresql-pure" or (errorHandler.buildDepError "postgresql-pure"))
          (hsPkgs."product-isomorphic" or (errorHandler.buildDepError "product-isomorphic"))
          (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
          (hsPkgs."relational-schemas" or (errorHandler.buildDepError "relational-schemas"))
          (hsPkgs."sql-words" or (errorHandler.buildDepError "sql-words"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      tests = {
        "db" = {
          depends = [
            (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC-session" or (errorHandler.buildDepError "HDBC-session"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."postgresql-pure" or (errorHandler.buildDepError "postgresql-pure"))
            (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
            (hsPkgs."relational-query-HDBC" or (errorHandler.buildDepError "relational-query-HDBC"))
            (hsPkgs."relational-query-postgresql-pure" or (errorHandler.buildDepError "relational-query-postgresql-pure"))
            ];
          buildable = true;
          };
        };
      };
    }