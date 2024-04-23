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
      identifier = { name = "subG"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/subG";
      url = "";
      synopsis = "Some extension to the Foldable and Monoid classes.";
      description = "Introduces a new class InsertLeft -- the class of types of values that can be inserted from the left to the Foldable structure that is a data that is also the Monoid instance. Also contains some functions to find out both minimum and maximum elements of the finite Foldable structures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }