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
    flags = { base4ornewer = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "show"; version = "0.3.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Lambdabot developers";
      author = "Lambdabot devs, Twan van Laarhoven <twanvl@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "'Show' instances for Lambdabot";
      description = "This package provides ShowQ, ShowFun, and SimpleReflect.\n\nShowFun gives a Typeable-dependent instance for showing functions as their type. ShowIO does the same for IO actions.\n\nShowQ adds SmallCheck & QuickCheck support.\n\nAnd SimpleReflect allows us to literally see how functions 'expand',\nthrough appropriate Show magic. See <http://twan.home.fmf.nl/blog/haskell/simple-reflection-of-expressions.details>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
        ] ++ (if flags.base4ornewer
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
    };
  }