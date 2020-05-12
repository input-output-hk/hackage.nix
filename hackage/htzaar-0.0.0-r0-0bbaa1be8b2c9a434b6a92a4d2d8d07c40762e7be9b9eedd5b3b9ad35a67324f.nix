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
      identifier = { name = "htzaar"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "http://tomahawkins.org";
      url = "";
      synopsis = "A two player abstract strategy game.";
      description = "Htzaar, an implementation of Tzaar ((c) 2007 Kris Brum), is a two player abstract\nstrategy game played on a hexagonal board.  Tzaar is the latest from\nthe GIPF game series.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "htzaar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }