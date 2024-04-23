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
      identifier = { name = "mmsyn2-array"; version = "0.3.1.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn2-array";
      url = "";
      synopsis = "A library that can be used for multiple Ord a => a -> b transformations.";
      description = "A library that can be used as a @case ... of@ construction replacement for various cases. Since the 0.2.0.0 version also uses the cuckoo hashtables in the respective module. Since the 0.3.0.0 version the hashing functionality moved to the separate package mmsyn2-hashable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }