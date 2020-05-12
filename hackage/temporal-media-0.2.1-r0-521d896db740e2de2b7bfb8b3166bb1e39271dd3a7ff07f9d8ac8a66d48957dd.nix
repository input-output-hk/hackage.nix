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
      identifier = { name = "temporal-media"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "data types for temporal media";
      description = "An embedded domain-specific language (EDSL) for\ncreating lists of constant time events related in time.\nCombinators are optimized in fusion style.\nIspired by the paper /An Algebraic Theory of Polymorphic Temporal Media/,\nPaul Hudak\n<http://haskell.cs.yale.edu/yale/papers/polymedia/hudak-RR-1259.pdf>,\nHaskore and Hommage";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          ];
        buildable = true;
        };
      };
    }