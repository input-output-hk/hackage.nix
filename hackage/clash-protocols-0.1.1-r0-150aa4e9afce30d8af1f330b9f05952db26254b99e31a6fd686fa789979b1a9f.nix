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
    flags = { large-tuples = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "clash-protocols"; version = "0.1.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "QBayLogic B.V. <devops@qbaylogic.com>";
      author = "Martijn Bastiaan, QBayLogic B.V.";
      homepage = "https://github.com/clash-lang/clash-protocols";
      url = "";
      synopsis = "a battery-included library for (dataflow) protocols";
      description = "Suggested reading order:\n\n* 'Protocols' + https://github.com/clash-lang/clash-protocols/blob/v0.1.1/README.md\n* 'Protocols.Df'\n* 'Protocols.Plugin'";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
          (hsPkgs."ghc-typelits-extra" or (errorHandler.buildDepError "ghc-typelits-extra"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."circuit-notation" or (errorHandler.buildDepError "circuit-notation"))
          (hsPkgs."clash-prelude-hedgehog" or (errorHandler.buildDepError "clash-prelude-hedgehog"))
          (hsPkgs."clash-protocols-base" or (errorHandler.buildDepError "clash-protocols-base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."strict-tuple" or (errorHandler.buildDepError "strict-tuple"))
          (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "unittests" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
            (hsPkgs."ghc-typelits-extra" or (errorHandler.buildDepError "ghc-typelits-extra"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."clash-prelude-hedgehog" or (errorHandler.buildDepError "clash-prelude-hedgehog"))
            (hsPkgs."clash-protocols" or (errorHandler.buildDepError "clash-protocols"))
            (hsPkgs."clash-protocols-base" or (errorHandler.buildDepError "clash-protocols-base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."strict-tuple" or (errorHandler.buildDepError "strict-tuple"))
            (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
            (hsPkgs."ghc-typelits-extra" or (errorHandler.buildDepError "ghc-typelits-extra"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clash-protocols" or (errorHandler.buildDepError "clash-protocols"))
            (hsPkgs."clash-protocols-base" or (errorHandler.buildDepError "clash-protocols-base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }