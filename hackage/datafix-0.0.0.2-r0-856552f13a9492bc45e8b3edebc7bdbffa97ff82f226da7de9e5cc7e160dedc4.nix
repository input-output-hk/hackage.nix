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
    flags = { no-lattices = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "datafix"; version = "0.0.0.2"; };
      license = "ISC";
      copyright = "© 2018 Sebastian Graf";
      maintainer = "sgraf1337@gmail.com";
      author = "Sebastian Graf";
      homepage = "https://github.com/sgraf812/datafix";
      url = "";
      synopsis = "Fixing data-flow problems";
      description = "Fixing data-flow problems in expression trees.\nThis should be useful if you want to write optimizations\nfor your favorite programming language.\nSee the Tutorial module for an introduction. After that,\nyou might want to take a look at the `examples/` folder\nin the [repository](https://github.com/sgraf812/datafix/tree/master/examples).";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-toolkit or (pkgs.pkgsBuildBuild.cabal-toolkit or (errorHandler.setupDepError "cabal-toolkit")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."pomaps" or (errorHandler.buildDepError "pomaps"))
        ] ++ pkgs.lib.optional (!flags.no-lattices) (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-toolkit" or (errorHandler.buildDepError "cabal-toolkit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."datafix" or (errorHandler.buildDepError "datafix"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ pkgs.lib.optional (!flags.no-lattices) (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))) ++ pkgs.lib.optional (flags.no-lattices) (hsPkgs."pomaps" or (errorHandler.buildDepError "pomaps"));
          buildable = true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."datafix" or (errorHandler.buildDepError "datafix"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-toolkit" or (errorHandler.buildDepError "cabal-toolkit"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."datafix" or (errorHandler.buildDepError "datafix"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ pkgs.lib.optional (!flags.no-lattices) (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))) ++ pkgs.lib.optional (flags.no-lattices) (hsPkgs."pomaps" or (errorHandler.buildDepError "pomaps"));
          buildable = true;
        };
      };
    };
  }