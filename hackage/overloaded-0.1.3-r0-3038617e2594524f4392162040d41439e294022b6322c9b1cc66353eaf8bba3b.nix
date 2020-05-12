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
      specVersion = "2.2";
      identifier = { name = "overloaded"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "Overloaded pragmas as a plugin";
      description = "Implement @Overloaded@ pragmas as a source plugin\n\nFor example we can replace\n\n@\n{-\\# LANGUAGE OverloadedStrings #-}\n@\n\nwith\n\n@\n{-\\# OPTIONS -fplugin=Overloaded -fplugin-opt=Overloaded:Strings #-}\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."symbols" or (errorHandler.buildDepError "symbols"))
          (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
          ];
        buildable = true;
        };
      sublibs = {
        "optics-hasfield" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
            ];
          buildable = true;
          };
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."overloaded" or (errorHandler.buildDepError "overloaded"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."symbols" or (errorHandler.buildDepError "symbols"))
            (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "example-idiom-brackets" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."overloaded" or (errorHandler.buildDepError "overloaded"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "example-record-fields" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."overloaded" or (errorHandler.buildDepError "overloaded"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."optics-hasfield" or (errorHandler.buildDepError "optics-hasfield"))
            (hsPkgs."overloaded" or (errorHandler.buildDepError "overloaded"))
            (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."symbols" or (errorHandler.buildDepError "symbols"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."singleton-bool" or (errorHandler.buildDepError "singleton-bool"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }