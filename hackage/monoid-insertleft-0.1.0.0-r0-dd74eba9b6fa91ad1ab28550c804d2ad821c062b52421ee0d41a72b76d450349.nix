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
      identifier = { name = "monoid-insertleft"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/monoid-insertleft";
      url = "";
      synopsis = "Some extension to the Foldable and Monoid classes.";
      description = "Introduces a new class InsertLeft — the class of types of values that can be inserted from the left to the Foldable structure that is a data that is also the Monoid instance. Also contains some functions to find out both minimum and maximum elements of the finite Foldable structures. Is a fork of the <https://hackage.haskell.org/package/subG>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }