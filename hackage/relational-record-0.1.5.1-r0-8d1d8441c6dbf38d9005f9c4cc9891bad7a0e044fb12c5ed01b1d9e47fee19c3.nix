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
      identifier = { name = "relational-record"; version = "0.1.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2016 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "Meta package of Relational Record";
      description = "Meta package to install Relational Record quickly";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
          (hsPkgs."relational-query-HDBC" or (errorHandler.buildDepError "relational-query-HDBC"))
          (hsPkgs."persistable-types-HDBC-pg" or (errorHandler.buildDepError "persistable-types-HDBC-pg"))
        ];
        buildable = true;
      };
    };
  }