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
      identifier = { name = "glazier-react"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier-react#readme";
      url = "";
      synopsis = "ReactJS binding using Glazier.Command.";
      description = "ReactJS binding using Glazier.Commmand. Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."alternators" or (errorHandler.buildDepError "alternators"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-diverse" or (errorHandler.buildDepError "data-diverse"))
          (hsPkgs."data-diverse-lens" or (errorHandler.buildDepError "data-diverse-lens"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."glazier" or (errorHandler.buildDepError "glazier"))
          (hsPkgs."javascript-extras" or (errorHandler.buildDepError "javascript-extras"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-misc" or (errorHandler.buildDepError "lens-misc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."newtype-generics" or (errorHandler.buildDepError "newtype-generics"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))) ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."ghcjs-base-stub" or (errorHandler.buildDepError "ghcjs-base-stub"));
        buildable = true;
        };
      };
    }