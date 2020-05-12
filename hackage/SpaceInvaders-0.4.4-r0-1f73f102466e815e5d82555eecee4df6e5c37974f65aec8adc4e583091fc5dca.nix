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
      identifier = { name = "SpaceInvaders"; version = "0.4.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan Perez <ivan.perez@keera.co.uk>";
      author = "Henrik Nilsson, Antony Courtney";
      homepage = "http://www.haskell.org/yampa/";
      url = "";
      synopsis = "Video game";
      description = "Video game implemented in Yampa.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "spaceInvaders" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."HGL" or (errorHandler.buildDepError "HGL"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            ];
          buildable = true;
          };
        };
      };
    }