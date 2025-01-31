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
      specVersion = "1.12";
      identifier = { name = "symtegration"; version = "0.6.1"; };
      license = "Apache-2.0";
      copyright = "Copyright 2025 Yoo Chung";
      maintainer = "dev@chungyc.org";
      author = "Yoo Chung";
      homepage = "https://symtegration.dev/";
      url = "";
      synopsis = "Library for symbolic integration of mathematical expressions.";
      description = "Symtegration is a library providing symbolic integration of mathematical expressions.\n\nFor example,\n\n>>> import Symtegration\n>>> toHaskell <$> integrate \"x\" (4 * \"x\" ** 3 + 1)\nJust \"x + x ** 4\"\n\nSee the \"Symtegration\" module for the main interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
        ];
        buildable = true;
      };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
            (hsPkgs."symtegration" or (errorHandler.buildDepError "symtegration"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."symtegration" or (errorHandler.buildDepError "symtegration"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }