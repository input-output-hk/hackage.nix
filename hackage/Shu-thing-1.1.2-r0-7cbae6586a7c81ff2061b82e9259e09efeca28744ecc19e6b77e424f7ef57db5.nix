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
      identifier = { name = "Shu-thing"; version = "1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Takayuki Muranushi <muranushi@gmail.com>, <gwern0@gmail.com>";
      author = "Hideyuki Tanaka & Takayuki Muranushi";
      homepage = "http://www.geocities.jp/takascience/index_en.html";
      url = "";
      synopsis = "A vector shooter game";
      description = "A 2-D vector graphics upwards-scrolling keyboard-controlled shooter.\nYou shoot the enemies while dodging their bullets until you reach and defeat the enemy boss.\n\nDarcs repo available at <http://code.haskell.org/shu-thing/>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "shu-thing" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          ];
          buildable = true;
        };
      };
    };
  }