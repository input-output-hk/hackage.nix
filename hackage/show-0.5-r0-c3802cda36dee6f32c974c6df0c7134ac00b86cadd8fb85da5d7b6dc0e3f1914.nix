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
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "show"; version = "0.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Lambdabot developers";
      author = "Lambdabot devs, Twan van Laarhoven <twanvl@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "'Show' instances for Lambdabot";
      description = "This package provides ShowQ, ShowFun, and SimpleReflect.\n\nShowFun gives us Typeable instances for neutering IO expressions.\n\nShowQ adds SmallCheck & QuickCheck support.\n\nAnd SimpleReflect allows us to literally see how functions 'expand',\nthrough appropriate Show magic. See <http://twan.home.fmf.nl/blog/haskell/simple-reflection-of-expressions.details>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          (hsPkgs."simple-reflect" or (errorHandler.buildDepError "simple-reflect"))
        ] ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
    };
  }