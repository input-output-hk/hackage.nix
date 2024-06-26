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
      identifier = { name = "wxAsteroids"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wxHaskell developer mailing list <wxhaskell-devel@lists.sourceforge.net>";
      author = "Daan Leijen";
      homepage = "https://wiki.haskell.org/WxAsteroids";
      url = "";
      synopsis = "Try to avoid the asteroids with your space ship";
      description = "The Asteroids game, using the wxHaskell GUI, as described in\n\\\"wxHaskell, A Portable and Concise GUI Library for Haskell\\\"\n<http://legacy.cs.uu.nl/daan/download/papers/wxhaskell.pdf>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "wxAsteroids" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          ];
          buildable = true;
        };
      };
    };
  }