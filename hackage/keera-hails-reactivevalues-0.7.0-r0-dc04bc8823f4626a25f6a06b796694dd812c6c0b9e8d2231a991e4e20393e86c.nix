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
      identifier = { name = "keera-hails-reactivevalues"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2013 Keera Studios Ltd";
      maintainer = "support@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://www.keera.co.uk/blog/community/";
      url = "";
      synopsis = "Haskell on Rails - Reactive Values";
      description = "This package contains a general definition of Reactive Values and several\nuseful combinators. A reactive value is a /typed mutable value with access\nproperties and change propagation/. Access property can be read-only,\nread-write or read-write.\n\nHow an RV is actually implemented, and when and how change propagation is\nexecuted is dependent on each RV. For instance, Gtk widget properties would\nnormally use the standard event-handler installers to implement change\npropagation, whereas pure Haskell values might fork a thread (or not) and\npropagate changes asynchronously.\n\nRVs can be created from pure models (see\n<https://github.com/keera-studios/keera-hails/tree/master/keera-hails-mvc-model-lightmodel\nkeera-hails-mvc-model-lightmodel> and\n<https://github.com/keera-studios/keera-hails/tree/master/keera-hails-mvc-model-protectedmodel\nkeera-hails-mvc-model-protectedmodel>), Gtk+\\/WX\\/Qt\\/HTML DOM\\/Android widget\nproperties\\/event handlers\\/getters\\/setters, files, sockets, FRP networks.\nOther backends are also available. See\n<https://github.com/keera-studios/keera-hails keera-hails> for a list of\navailable backends, tutorials, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          ];
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            ];
          build-tools = (pkgs.lib).optional (!(!flags.test-doc-coverage)) (hsPkgs.buildPackages.cabal-install.components.exes.cabal or (pkgs.buildPackages.cabal or (errorHandler.buildToolDepError "cabal-install:cabal")));
          buildable = if !flags.test-doc-coverage then false else true;
          };
        "unit-tests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-unit-tests)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."keera-hails-reactivevalues" or (errorHandler.buildDepError "keera-hails-reactivevalues"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = if !flags.test-unit-tests then false else true;
          };
        };
      };
    }