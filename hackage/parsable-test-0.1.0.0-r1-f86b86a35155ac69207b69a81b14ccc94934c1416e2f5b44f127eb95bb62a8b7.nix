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
    flags = { pedantic = false; verbose-tests = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "parsable-test"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (C) 2022-2025 Gentoo Authors";
      maintainer = "hololeap@protonmail.com";
      author = "Gentoo Authors";
      homepage = "https://github.com/gentoo-haskell/cabal-portage/tree/main/parsable-test";
      url = "";
      synopsis = "Test functions for the parsable package";
      description = "Provides QuickCheck generators and HUnit assertions for testing\nthe round-trip assurances of types with both Parsable and Printable\ninstances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsable" or (errorHandler.buildDepError "parsable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
        ];
        buildable = true;
      };
    };
  }