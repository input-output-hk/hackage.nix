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
      identifier = { name = "deep-transformations"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Mario Blažević";
      maintainer = "blamario@protonmail.com";
      author = "Mario Blažević";
      homepage = "https://github.com/blamario/grampa/tree/master/deep-transformations";
      url = "";
      synopsis = "Deep natural and unnatural tree transformations, including attribute grammars";
      description = "This library builds on the <http://hackage.haskell.org/package/rank2classes rank2classes> package to provide the\nequivalents of 'Functor' and related classes for heterogenous trees, including complex abstract syntax trees of\nreal-world programming languages.\n\nThe functionality includes attribute grammars in \"Transformation.AG\".";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rank2classes" or (errorHandler.buildDepError "rank2classes"))
            (hsPkgs."deep-transformations" or (errorHandler.buildDepError "deep-transformations"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.markdown-unlit.components.exes.markdown-unlit or (pkgs.pkgsBuildBuild.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = true;
        };
      };
    };
  }