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
    flags = {
      test-hlint = true;
      test-doc-coverage = true;
      test-unit-tests = true;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "keera-hails-reactivelenses"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2013 Keera Studios Ltd";
      maintainer = "support@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://www.keera.co.uk/blog/community/";
      url = "";
      synopsis = "Reactive Haskell on Rails - Lenses applied to Reactive Values";
      description = "Keera Hails is a rapid application development system.\n\nThe idea behind Hails is that you should be able to build cross platform\napplications with minimal effort, very quickly, and the result should be easy\nto maintain.\n\nLarge Hails applications are structured following an optimized MVC\narchitecture. Values are updated either from the view to the model, or from\nthe model to the view. Internally, rules use a notion of direction in the\nupdate to determine how different components must be updated.\n\nThis library provides a way to use lenses to focus on a specific\npart of a reactive value.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."keera-hails-reactivevalues" or (errorHandler.buildDepError "keera-hails-reactivevalues"))
        ];
        buildable = true;
      };
      tests = {
        "hlint" = {
          depends = pkgs.lib.optionals (!!flags.test-hlint) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = if !flags.test-hlint then false else true;
        };
        "haddock-coverage" = {
          depends = pkgs.lib.optionals (!!flags.test-doc-coverage) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          ];
          buildable = if !flags.test-doc-coverage then false else true;
        };
        "unit-tests" = {
          depends = pkgs.lib.optionals (!!flags.test-unit-tests) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."keera-hails-reactivevalues" or (errorHandler.buildDepError "keera-hails-reactivevalues"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = if !flags.test-unit-tests then false else true;
        };
      };
    };
  }