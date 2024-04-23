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
    flags = { test-hlint = false; test-doc-coverage = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "keera-hails-reactive-htmldom";
        version = "0.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "support@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://github.com/keera-studios/keera-hails";
      url = "";
      synopsis = "Keera Hails Reactive bindings for HTML DOM via GHCJS";
      description = "A layer defining RVs for HTML element fields and actions.\n\nReactive Values are an abstraction for reactive programming based on setters\nand getters with change-based propagation.\n\nThey enable easy communication/synchronization rules via Reactive Rules\n(RRs), which can keep two type-compatible RVs in sync directionally or\nbidirectionally.\n\nThis library provides operations to turn HTML element properties and\nfields into RVs, so that they can be used to create reactive user\ninterfaces with minimal effort.\n\nFor details, please see the paper \"Bridging the GUI Gap with Reactive Values\nand Relations\", by Ivan Perez and Henrik Nilsson at Haskell Symposium 2015.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
          (hsPkgs."keera-callbacks" or (errorHandler.buildDepError "keera-callbacks"))
          (hsPkgs."keera-hails-reactivevalues" or (errorHandler.buildDepError "keera-hails-reactivevalues"))
          (hsPkgs."keera-hails-reactive-cbmvar" or (errorHandler.buildDepError "keera-hails-reactive-cbmvar"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
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
      };
    };
  }