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
    flags = {
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "accelerate-io"; version = "0.15.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Manuel M T Chakravarty <chak@cse.unsw.edu.au>";
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
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }