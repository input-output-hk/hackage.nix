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
    flags = { withquickcheck = false; splitbase = true; base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "combinat"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2009 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Generation of various combinatorial objects.";
      description = "A collection of functions to generate combinatorial\nobjects like partitions, combinations, permutations,\nYoung tableaux, various trees, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ pkgs.lib.optional (flags.withquickcheck) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }