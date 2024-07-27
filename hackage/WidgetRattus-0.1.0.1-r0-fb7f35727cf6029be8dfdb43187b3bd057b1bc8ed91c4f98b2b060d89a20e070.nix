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
      identifier = { name = "WidgetRattus"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2023 Emil Houlborg, Gregers Rørdam, Patrick Bahr";
      maintainer = "Patrick Bahr <paba@itu.dk>";
      author = "Emil Houlborg, Gregers Rørdam, Patrick Bahr";
      homepage = "https://github.com/pa-ba/AsyncRattus/";
      url = "";
      synopsis = "An asynchronous modal FRP language";
      description = "This library implements an experimental variant of the Async Rattus\nprogramming language that features extensions for implementing GUIs.";
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
        ];
        buildable = true;
      };
      tests = {
        "ill-typed" = {
          depends = [
            (hsPkgs."AsyncRattus" or (errorHandler.buildDepError "AsyncRattus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "well-typed" = {
          depends = [
            (hsPkgs."AsyncRattus" or (errorHandler.buildDepError "AsyncRattus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }