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
      specVersion = "3.0";
      identifier = { name = "symplectic-chp"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2026 overshiki";
      maintainer = "le.niu@hotmail.com";
      author = "overshiki";
      homepage = "https://github.com/overshiki/symplectic-chp";
      url = "";
      synopsis = "CHP Clifford simulator using symplectic geometry";
      description = "A Haskell implementation of the CHP Clifford simulator through the lens of symplectic geometry. Includes a library for programmatic circuit construction and a command-line tool for simulating STIM circuit files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      exes = {
        "symplectic-chp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stim-parser" or (errorHandler.buildDepError "stim-parser"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."symplectic-chp" or (errorHandler.buildDepError "symplectic-chp"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
      tests = {
        "symplectic-chp-test" = {
          depends = [
            (hsPkgs."symplectic-chp" or (errorHandler.buildDepError "symplectic-chp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stim-parser" or (errorHandler.buildDepError "stim-parser"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }