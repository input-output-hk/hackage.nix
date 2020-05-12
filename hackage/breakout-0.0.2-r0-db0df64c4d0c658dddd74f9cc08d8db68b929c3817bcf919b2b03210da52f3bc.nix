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
      identifier = { name = "breakout"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009, Eyal Lotem";
      maintainer = "Eyal Lotem (eyal.lotem@gmail.com)";
      author = "Eyal Lotem";
      homepage = "http://github.com/Peaker/breakout/tree/master";
      url = "";
      synopsis = "A simple Breakout game implementation.";
      description = "A simple Breakout game implementation.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "breakout" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskgame" or (errorHandler.buildDepError "haskgame"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            ];
          buildable = true;
          };
        };
      };
    }