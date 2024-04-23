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
    flags = { build-doctest-examples = false; include-size-tests = true; };
    package = {
      specVersion = "2.4";
      identifier = { name = "typelet"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP, Juspay Technologies Pvt Ltd";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "Plugin to faciliate type-level let";
      description = "For a certain class of programs, type-level let is essential\nin order to be able to write these programs in such a way\nthat they do not result in ghc core that is quadratic in\nsize. Type-level let is not explicitly supported in ghc,\nbut we can encode it. The @typelet@ library provides a\ntype-checker plugin that makes the encoding more convenient\nto use as well as more effective.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-tcplugin-api" or (errorHandler.buildDepError "ghc-tcplugin-api"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
      exes = {
        "doctest-examples-typelet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typelet" or (errorHandler.buildDepError "typelet"))
          ];
          buildable = if !flags.build-doctest-examples then false else true;
        };
      };
      tests = {
        "test-typelet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typelet" or (errorHandler.buildDepError "typelet"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "doctest-typelet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."typelet" or (errorHandler.buildDepError "typelet"))
          ];
          buildable = if !flags.build-doctest-examples then false else true;
        };
      };
    };
  }