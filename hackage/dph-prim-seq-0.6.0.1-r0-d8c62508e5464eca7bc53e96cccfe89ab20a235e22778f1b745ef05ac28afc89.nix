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
      identifier = { name = "dph-prim-seq"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@cse.unsw.edu.au>";
      author = "The DPH Team";
      homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
      url = "";
      synopsis = "Data Parallel Haskell segmented arrays. (sequential implementation)";
      description = "Sequential array data type and stream fuctions, along with a\nsequential reference implementation of the segmented array\nAPI defined in @dph-prim-interface@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."dph-base" or (errorHandler.buildDepError "dph-base"))
          (hsPkgs."dph-prim-interface" or (errorHandler.buildDepError "dph-prim-interface"))
          ];
        buildable = true;
        };
      };
    }