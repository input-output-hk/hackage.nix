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
      specVersion = "1.6";
      identifier = { name = "dph-lifted-copy"; version = "0.6.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@cse.unsw.edu.au>";
      author = "The DPH Team";
      homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
      url = "";
      synopsis = "Data Parallel Haskell lifted array combinators. (deprecated version)";
      description = "Using this package can cause the vectorised program to have worse\nasymptotic complexity than the original.\nUse dph-lifted-vseg instead.\nThis package provides the following:\nnested arrays and the primitive operators that work on them (PA functions);\nthe lifted array combinators that the vectoriser introduces (PP functions);\nthe user facing library functions that work on [::] style arrays (P functions).\nDeprecated implementation that performs deep copying replicate.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
          (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
        ];
        buildable = true;
      };
    };
  }