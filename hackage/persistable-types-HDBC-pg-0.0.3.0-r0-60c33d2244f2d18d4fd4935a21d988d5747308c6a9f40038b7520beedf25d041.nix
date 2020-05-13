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
      identifier = { name = "persistable-types-HDBC-pg"; version = "0.0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015-2018 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "HDBC and Relational-Record instances of PostgreSQL extended types";
      description = "This package contains HDBC Convertible instances and\nRelational-Record persistable instances of PostgreSQL extended types\nSupported extended types: inet, cidr";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."text-postgresql" or (errorHandler.buildDepError "text-postgresql"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."persistable-record" or (errorHandler.buildDepError "persistable-record"))
          (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
          (hsPkgs."relational-query-HDBC" or (errorHandler.buildDepError "relational-query-HDBC"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
            (hsPkgs."relational-query-HDBC" or (errorHandler.buildDepError "relational-query-HDBC"))
            (hsPkgs."text-postgresql" or (errorHandler.buildDepError "text-postgresql"))
            (hsPkgs."persistable-types-HDBC-pg" or (errorHandler.buildDepError "persistable-types-HDBC-pg"))
            ];
          buildable = true;
          };
        };
      };
    }