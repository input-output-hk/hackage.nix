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
      identifier = { name = "canadian-income-tax"; version = "2024.1.0.1"; };
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
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bitwise-enum" or (errorHandler.buildDepError "bitwise-enum"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
          (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
          (hsPkgs."deep-transformations" or (errorHandler.buildDepError "deep-transformations"))
          (hsPkgs."ca-province-codes" or (errorHandler.buildDepError "ca-province-codes"))
          (hsPkgs."forms-data-format" or (errorHandler.buildDepError "forms-data-format"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "complete-canadian-taxes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
            (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."ca-province-codes" or (errorHandler.buildDepError "ca-province-codes"))
            (hsPkgs."forms-data-format" or (errorHandler.buildDepError "forms-data-format"))
            (hsPkgs."canadian-income-tax" or (errorHandler.buildDepError "canadian-income-tax"))
          ];
          buildable = true;
        };
        "serve-canadian-taxes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-static" or (errorHandler.buildDepError "wai-middleware-static"))
            (hsPkgs."forms-data-format" or (errorHandler.buildDepError "forms-data-format"))
            (hsPkgs."canadian-income-tax" or (errorHandler.buildDepError "canadian-income-tax"))
          ];
          buildable = true;
        };
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."forms-data-format" or (errorHandler.buildDepError "forms-data-format"))
            (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
            (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
            (hsPkgs."deep-transformations" or (errorHandler.buildDepError "deep-transformations"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ca-province-codes" or (errorHandler.buildDepError "ca-province-codes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."canadian-income-tax" or (errorHandler.buildDepError "canadian-income-tax"))
          ];
          buildable = true;
        };
        "regression" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."forms-data-format" or (errorHandler.buildDepError "forms-data-format"))
            (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
            (hsPkgs."deep-transformations" or (errorHandler.buildDepError "deep-transformations"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ca-province-codes" or (errorHandler.buildDepError "ca-province-codes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."canadian-income-tax" or (errorHandler.buildDepError "canadian-income-tax"))
          ];
          buildable = true;
        };
      };
    };
  }