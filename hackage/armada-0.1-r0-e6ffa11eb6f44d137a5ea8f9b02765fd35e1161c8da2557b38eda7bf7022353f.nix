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
      specVersion = "1.0";
      identifier = { name = "armada"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009 by Timothy Carstens";
      maintainer = "Timothy Carstens <carstens@math.utah.edu>";
      author = "Timothy Carstens";
      homepage = "";
      url = "";
      synopsis = "Space-based real time strategy game";
      description = "Players use an armada of spaceships to collect resources, build their\nmilitary, and dominate space.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "armada" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }