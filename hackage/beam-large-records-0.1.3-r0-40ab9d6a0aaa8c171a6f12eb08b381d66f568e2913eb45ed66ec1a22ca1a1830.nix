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
      identifier = { name = "beam-large-records"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "Integration of large-records with beam-core.";
      description = "This package provides the necessary instances that make\nit possible to use records defined with large-records as\nbeam database tables or beam databases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
          (hsPkgs."large-generics" or (errorHandler.buildDepError "large-generics"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
        ];
        buildable = true;
      };
      tests = {
        "test-beam-large-records" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
            (hsPkgs."beam-large-records" or (errorHandler.buildDepError "beam-large-records"))
            (hsPkgs."beam-sqlite" or (errorHandler.buildDepError "beam-sqlite"))
            (hsPkgs."large-records" or (errorHandler.buildDepError "large-records"))
            (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."large-generics" or (errorHandler.buildDepError "large-generics"))
            (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          ];
          buildable = true;
        };
      };
    };
  }