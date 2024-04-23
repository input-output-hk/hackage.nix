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
      specVersion = "2.2";
      identifier = { name = "rstream"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leschinskiy 2008-2012";
      maintainer = "chessai1996@gmail.com";
      author = "Roman Leschinskiy <rl@cse.unsw.edu.au>";
      homepage = "https://github.com/chessai/rstream";
      url = "";
      synopsis = "stream-fusion framework from vector";
      description = "wanted to rip the stream-fusion framework from vector\nwithout depending on vector, and possibly make tweaks.\nthis package is primarily for playground use.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }