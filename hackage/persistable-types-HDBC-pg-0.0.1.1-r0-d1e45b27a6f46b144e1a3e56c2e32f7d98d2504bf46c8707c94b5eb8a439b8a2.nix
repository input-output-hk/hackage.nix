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
      identifier = { name = "persistable-types-HDBC-pg"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "HDBC Convertible instances and HRR persistable instances of PostgreSQL extended types";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text-postgresql" or (errorHandler.buildDepError "text-postgresql"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."persistable-record" or (errorHandler.buildDepError "persistable-record"))
          (hsPkgs."relational-query-HDBC" or (errorHandler.buildDepError "relational-query-HDBC"))
        ];
        buildable = true;
      };
    };
  }