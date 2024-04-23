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
      specVersion = "1.8";
      identifier = { name = "inch"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Adam Gundry";
      maintainer = "Adam Gundry <adam.gundry@strath.ac.uk>";
      author = "Adam Gundry <adam.gundry@strath.ac.uk>";
      homepage = "https://github.com/adamgundry/inch/";
      url = "";
      synopsis = "A type-checker for Haskell with integer constraints";
      description = "Inch is a type-checker for a subset of Haskell (plus some GHC\nextensions) with the addition of integer constraints. After\nsuccessfully type-checking a source file, it outputs an\noperationally equivalent version with the type-level integers\nerased, so it can be used as a preprocessor in order to compile\nprograms.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "inch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."IndentParser" or (errorHandler.buildDepError "IndentParser"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."presburger" or (errorHandler.buildDepError "presburger"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-inch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."IndentParser" or (errorHandler.buildDepError "IndentParser"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."presburger" or (errorHandler.buildDepError "presburger"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }