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
      identifier = { name = "glazier-react-widget"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier-react-widget#readme";
      url = "";
      synopsis = "Generic widget library using glazier-react";
      description = "Generic widget library using glazier-react. Please see README.md.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-diverse" or (errorHandler.buildDepError "data-diverse"))
          (hsPkgs."data-diverse-lens" or (errorHandler.buildDepError "data-diverse-lens"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."glazier" or (errorHandler.buildDepError "glazier"))
          (hsPkgs."glazier-react" or (errorHandler.buildDepError "glazier-react"))
          (hsPkgs."javascript-extras" or (errorHandler.buildDepError "javascript-extras"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-misc" or (errorHandler.buildDepError "lens-misc"))
          (hsPkgs."monadlist" or (errorHandler.buildDepError "monadlist"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs."ghcjs-base-stub" or (errorHandler.buildDepError "ghcjs-base-stub"));
        buildable = true;
      };
    };
  }