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
    flags = { quickcheck2 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "FComp"; version = "1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014 University of Oxford";
      maintainer = "jpm@cs.ox.ac.uk";
      author = "Jose Pedro Magalhaes";
      homepage = "";
      url = "";
      synopsis = "Compose music";
      description = "Compose music";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
          (hsPkgs."HarmTrace-Base" or (errorHandler.buildDepError "HarmTrace-Base"))
          (hsPkgs."instant-generics" or (errorHandler.buildDepError "instant-generics"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."haskore" or (errorHandler.buildDepError "haskore"))
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ] ++ [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      exes = {
        "fcomp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
            (hsPkgs."HarmTrace-Base" or (errorHandler.buildDepError "HarmTrace-Base"))
            (hsPkgs."instant-generics" or (errorHandler.buildDepError "instant-generics"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."haskore" or (errorHandler.buildDepError "haskore"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }