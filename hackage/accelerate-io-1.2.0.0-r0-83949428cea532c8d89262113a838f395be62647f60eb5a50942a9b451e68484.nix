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
      identifier = { name = "accelerate-io"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty,\nGabriele Keller,\nSean Seefried,\nTrevor L. McDonell";
      homepage = "https://github.com/AccelerateHS/accelerate-io";
      url = "";
      synopsis = "Read and write Accelerate arrays in various formats";
      description = "This package provides efficient conversion routines between a range of array\ntypes and Accelerate arrays.\n\nRefer to the main /Accelerate/ package for more information:\n<http://hackage.haskell.org/package/accelerate>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test-io" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }