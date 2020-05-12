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
      specVersion = "1.2";
      identifier = { name = "show"; version = "0.3.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Lambdabot developers";
      author = "Lambdabot devs, Twan van Laarhoven <twanvl@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "'Show' instances for Lambdabot";
      description = "This package provides ShowQ, ShowFun, and SimpleReflect.\n\nShowFun gives us Typeable instances for showing functions and IO values as their type.\n\nShowQ adds SmallCheck & QuickCheck support.\n\nAnd SimpleReflect allows us to literally see how functions 'expand',\nthrough appropriate Show magic. See <http://twan.home.fmf.nl/blog/haskell/simple-reflection-of-expressions.details>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          ];
        buildable = true;
        };
      };
    }