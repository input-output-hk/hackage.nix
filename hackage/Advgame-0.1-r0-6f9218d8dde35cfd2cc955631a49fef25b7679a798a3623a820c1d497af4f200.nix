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
      identifier = { name = "Advgame"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "inforichland@gmail.com";
      author = "Tim Wawrzynczak";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Lisperati's adventure game in Lisp translated to Haskell";
      buildType = "Simple";
    };
    components = {
      exes = {
        "advgame" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
          buildable = true;
        };
      };
    };
  }