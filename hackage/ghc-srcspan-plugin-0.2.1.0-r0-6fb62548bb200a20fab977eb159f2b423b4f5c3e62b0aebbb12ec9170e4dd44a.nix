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
      identifier = { name = "ghc-srcspan-plugin"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, Galois Inc.";
      maintainer = "eric@seidel.io";
      author = "Eric Seidel";
      homepage = "";
      url = "";
      synopsis = "Generic GHC Plugin for annotating Haskell code with source\nlocation data.";
      description = "This package provides a generic Core-to-Core pass for\nannotating Haskell expressions with the original source\nlocations, making them available at runtime.\n\nYou can use it to build a GHC Plugin tailored to\nyour own library by providing a predicate to select\ninteresting expressions for annotation and a function to\nannotate the expressions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
        ];
        buildable = true;
      };
    };
  }