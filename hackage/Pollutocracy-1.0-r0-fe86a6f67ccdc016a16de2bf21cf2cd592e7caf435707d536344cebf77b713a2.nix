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
      identifier = { name = "Pollutocracy"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Isaac Dupree <antispam@idupree.com>";
      author = "Isaac Dupree";
      homepage = "";
      url = "";
      synopsis = "An imaginary world";
      description = "This is a simulated world I invented.\nIt has pollution and energy and trees and mountains\nand chaos storms.  It is randomly generated and\nnon-interactive at present.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Pollutocracy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          ];
          buildable = true;
        };
      };
    };
  }