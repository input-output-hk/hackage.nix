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
    flags = { wiimote = true; kinect = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "haskanoid"; version = "0.1.5.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez and Henrik Nilsson";
      homepage = "http://github.com/ivanperez-keera/haskanoid";
      url = "";
      synopsis = "A breakout game written in Yampa using SDL";
      description = "An arkanoid game featuring SDL graphics and sound, and\nWiimote & Kinect support, implemented using Yampa.\n\n<<https://github.com/ivanperez-keera/haskanoid/blob/master/screenshots/android.gif?raw=true>>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haskanoid" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
            (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
          ] ++ pkgs.lib.optional (flags.wiimote) (hsPkgs."hcwiid" or (errorHandler.buildDepError "hcwiid"))) ++ pkgs.lib.optionals (flags.kinect) [
            (hsPkgs."freenect" or (errorHandler.buildDepError "freenect"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }