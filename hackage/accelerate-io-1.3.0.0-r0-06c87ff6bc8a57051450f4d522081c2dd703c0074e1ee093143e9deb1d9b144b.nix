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
      identifier = { name = "accelerate-io"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <trevor.mcdonell@gmail.com>";
      author = "The Accelerate Team";
      homepage = "https://github.com/AccelerateHS/accelerate-io";
      url = "";
      synopsis = "Convert between Accelerate arrays and raw pointers";
      description = "This package provides efficient conversion routines between Accelerate arrays\nand raw pointers.\n\nAs of version 1.3 this package has been split up into smaller components each\ntargeting a specific data type.\n\nRefer to the main /Accelerate/ package for more information:\n<http://hackage.haskell.org/package/accelerate>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
        ];
        buildable = true;
      };
    };
  }