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
      specVersion = "1.8";
      identifier = { name = "relational-postgresql8"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Shohei Murayama";
      maintainer = "shohei.murayama@gmail.com";
      author = "Shohei Murayama";
      homepage = "https://github.com/yuga/haskell-relational-record-driver-postgresql8";
      url = "";
      synopsis = "PostgreSQL v8.x driver for haskell-relational-record";
      description = "This package contains a driver of old PostgreSQL for haskell-relational-record.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."persistable-record" or (errorHandler.buildDepError "persistable-record"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."names-th" or (errorHandler.buildDepError "names-th"))
          (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
          (hsPkgs."relational-query-HDBC" or (errorHandler.buildDepError "relational-query-HDBC"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }