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
    flags = { withquickcheck = false; base4 = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "combinat"; version = "0.2.7.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2015 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Generate and manipulate various combinatorial objects.";
      description = "A collection of functions to generate, count and manipulate\nall kinds of combinatorial objects like partitions,\ncompositions, permutations, Young tableaux, binary trees,\nand so on.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (flags.withquickcheck) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
        buildable = true;
      };
    };
  }