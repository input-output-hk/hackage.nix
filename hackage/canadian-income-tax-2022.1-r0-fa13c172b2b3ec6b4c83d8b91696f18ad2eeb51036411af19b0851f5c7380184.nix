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
      specVersion = "2.4";
      identifier = { name = "canadian-income-tax"; version = "2022.1"; };
      license = "GPL-3.0-or-later";
      copyright = "(c) 2023 Mario Blažević";
      maintainer = "blamario@protonmail.com";
      author = "Mario Blažević";
      homepage = "";
      url = "";
      synopsis = "Canadian income tax calculation";
      description = "This package provides a library and executable to fill out\nincomplete Canadian tax forms in FDF format and to populate all\nfields therein that can be automatically calculated from the rest\nof the form.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
          (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
          (hsPkgs."ca-province-codes" or (errorHandler.buildDepError "ca-province-codes"))
          (hsPkgs."forms-data-format" or (errorHandler.buildDepError "forms-data-format"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "complete-canadian-t1-form" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."forms-data-format" or (errorHandler.buildDepError "forms-data-format"))
            (hsPkgs."canadian-income-tax" or (errorHandler.buildDepError "canadian-income-tax"))
            ];
          buildable = true;
          };
        };
      };
    }