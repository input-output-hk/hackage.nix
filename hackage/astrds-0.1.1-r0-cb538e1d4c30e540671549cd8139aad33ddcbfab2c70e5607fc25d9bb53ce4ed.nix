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
      identifier = { name = "astrds"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Clara Loeh <darcs@wuisch.org>";
      author = "Clara Loeh <darcs@wuisch.org>,\nAndres Loeh <ksastrds@andres-loeh.de>";
      homepage = "";
      url = "";
      synopsis = "an incomplete 2d space game";
      description = "astrds is an intentionally incomplete 2d space game. The code\nis intended to be a playground for Haskell programmers who want\nto add their own features and extensions. The\nimplementation is based on SDL and OpenGL and includes\nsimple audio and joystick support.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "astrds" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
            (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            ];
          buildable = true;
          };
        };
      };
    }