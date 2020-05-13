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
      identifier = { name = "generic-data"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/generic-data#readme";
      url = "";
      synopsis = "Utilities for GHC.Generics";
      description = "This package provides common functions on generic types.\nSee README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."show-combinators" or (errorHandler.buildDepError "show-combinators"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."generic-data" or (errorHandler.buildDepError "generic-data"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "record-test" = {
          depends = [
            (hsPkgs."generic-data" or (errorHandler.buildDepError "generic-data"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }