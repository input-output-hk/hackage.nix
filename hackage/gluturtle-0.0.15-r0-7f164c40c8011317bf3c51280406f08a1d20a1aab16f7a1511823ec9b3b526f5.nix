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
      identifier = { name = "gluturtle"; version = "0.0.15"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "turtle like LOGO with glut";
      description = "turtle like LOGO with glut\n\nNow alpha alpha alpha alpha version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yjtools" or (errorHandler.buildDepError "yjtools"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."yjsvg" or (errorHandler.buildDepError "yjsvg"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          ];
        buildable = true;
        };
      exes = {
        "testTurtle" = { buildable = true; };
        "randomTurtle" = {
          depends = [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }