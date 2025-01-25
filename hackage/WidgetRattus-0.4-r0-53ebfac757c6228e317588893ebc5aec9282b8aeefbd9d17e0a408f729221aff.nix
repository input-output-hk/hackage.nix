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
      specVersion = "1.18";
      identifier = { name = "WidgetRattus"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2024 Emil Houlborg, Gregers Rørdam, Patrick Bahr, Jean-Claude Sebastian Disch, Asger Lademark Heegaard";
      maintainer = "Patrick Bahr <paba@itu.dk>";
      author = "Emil Houlborg, Gregers Rørdam, Patrick Bahr, Jean-Claude Sebastian Disch, Asger Lademark Heegaard";
      homepage = "https://github.com/pa-ba/AsyncRattus/tree/WidgetRattus";
      url = "";
      synopsis = "An asynchronous modal FRP language for GUI programming";
      description = "This library implements an experimental variant of the Async Rattus\nprogramming language that features extensions for implementing GUIs.\nA comprehensive introduction can be found in this\n<src/docs/paper.pdf paper>.\n\nSeveral example GUIs implemented using Widget Rattus can be found\n<https://github.com/pa-ba/AsyncRattus/tree/WidgetRattus/examples/gui here>.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."simple-affine-space" or (errorHandler.buildDepError "simple-affine-space"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."monomer" or (errorHandler.buildDepError "monomer"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "ill-typed" = {
          depends = [
            (hsPkgs."WidgetRattus" or (errorHandler.buildDepError "WidgetRattus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "well-typed" = {
          depends = [
            (hsPkgs."WidgetRattus" or (errorHandler.buildDepError "WidgetRattus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }