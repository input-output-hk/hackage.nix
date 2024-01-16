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
      identifier = { name = "minmax"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/minmax";
      url = "";
      synopsis = "Functions to find both minimum and maximum (or several of them simultaneously) in one pass.";
      description = "Contains some functions to find out both minimum and maximum elements of the finite Foldable structures in one pass. Is a fork of the <https://hackage.haskell.org/package/subG-0.6.1.0>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }