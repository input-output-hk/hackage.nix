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
      identifier = { name = "Monadius"; version = "0.92"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Takayuki Muranushi <muranushi@gmail.com>";
      author = "Hideyuki Tanaka & Takayuki Muranushi";
      homepage = "http://www.geocities.jp/takascience/haskell/monadius_en.html";
      url = "";
      synopsis = "2-D arcade scroller";
      description = "A fast-paced 2-D scrolling vector graphics clone of the arcade game Gradius;\nit is dedicated to the 20th anniversary of Gradius series.\n\nThe Darcs repo is available at <http://code.haskell.org/monadius/>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "monadius" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            ];
          buildable = true;
          };
        };
      };
    }