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
      identifier = { name = "keuringsdienst"; version = "1.2.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Josep Bigorra <jjbigorra@gmail.com>";
      author = "";
      homepage = "https://codeberg.org/jjba23/keuringsdienst";
      url = "";
      synopsis = "Data validation in Haskell: composable, easy and clean.              ";
      description = "Validation rules should be expressive and serve as documentation of your data.\nBased on Semigroup and Monoid operations, this makes validation rules that are easy to write, read, compose and maintain.\nSee README at https://codeberg.org/jjba23/keuringsdienst.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "keuringsdienst-spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."keuringsdienst" or (errorHandler.buildDepError "keuringsdienst"))
          ];
          buildable = true;
        };
      };
    };
  }