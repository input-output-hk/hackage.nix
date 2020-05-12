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
      identifier = { name = "unlifted-list"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 (c) chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/unlifted-list.git";
      url = "";
      synopsis = "GHC Haskell lists of non-thunks (things of kind TYPE 'UnliftedRep)";
      description = "The type provided by this library is a linked list that guarantees\nthe values it stores are not thunks. It could certainly be useful\nfor something stack-like, where the values are unlifted.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
        buildable = true;
        };
      };
    }