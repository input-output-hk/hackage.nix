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
      identifier = { name = "clash-protocols-base"; version = "0.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "QBayLogic B.V. <devops@qbaylogic.com>";
      author = "Martijn Bastiaan, QBayLogic B.V.";
      homepage = "https://github.com/clash-lang/clash-protocols";
      url = "";
      synopsis = "Internal support package for clash-protocols; use clash-protocols instead.";
      description = "Internal core plugin and protocol support types for the clash-protocols\npackage family. Users should depend on @clash-protocols@ instead.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
          (hsPkgs."circuit-notation" or (errorHandler.buildDepError "circuit-notation"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }