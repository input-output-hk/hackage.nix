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
      identifier = { name = "vector"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leshchinskiy 2008";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy";
      homepage = "http://darcs.haskell.org/vector";
      url = "";
      synopsis = "Efficient Arrays";
      description = "\nAn efficient implementation of Int-indexed arrays with a powerful\nloop fusion framework.\n\nThis code is highly experimental and for the most part untested. Use\nat your own risk!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
    };
  }