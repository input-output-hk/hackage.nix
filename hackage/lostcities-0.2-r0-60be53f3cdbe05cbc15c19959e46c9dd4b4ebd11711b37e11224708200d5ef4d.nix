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
      identifier = { name = "lostcities"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009 Pedro Vasconcelos";
      maintainer = "pbv@ncc.up.pt";
      author = "Pedro Vasconcelos";
      homepage = "http://www.ncc.up.pt/~pbv/stuff/lostcities";
      url = "";
      synopsis = "An implementation of an adictive two-player card game";
      description = "Based on the card game designed by Reiner Knizia.\nIn this implementation you play against the computer.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lostcities" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          ];
          buildable = true;
        };
      };
    };
  }