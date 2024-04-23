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
      specVersion = "3.0";
      identifier = {
        name = "amazonka-contrib-rds-utils";
        version = "1.6.1.0";
      };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2021 Maxim Avanov";
      maintainer = "maxim.avanov@gmail.com";
      author = "Maxim Avanov";
      homepage = "https://github.com/avanov/amazonka-contrib-rds-utils";
      url = "";
      synopsis = "A Haskell equivalent of \"aws rds generate-db-auth-token\"";
      description = "A Haskell equivalent of \"aws rds generate-db-auth-token\" CLI utility built on top of \"amazonka\" library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."amazonka-rds" or (errorHandler.buildDepError "amazonka-rds"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "generate-db-auth-token" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-contrib-rds-utils" or (errorHandler.buildDepError "amazonka-contrib-rds-utils"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }