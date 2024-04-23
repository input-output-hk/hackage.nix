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
      specVersion = "1.12";
      identifier = { name = "place-cursor-at"; version = "1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright © 2017–2021 Viacheslav Lotsmanov";
      maintainer = "Viacheslav Lotsmanov <lotsmanov89@gmail.com>";
      author = "Viacheslav Lotsmanov";
      homepage = "https://github.com/unclechu/place-cursor-at#readme";
      url = "";
      synopsis = "A utility for X11 that moves the mouse cursor using the keyboard";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "place-cursor-at" = {
          depends = [
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          ];
          libs = [ (pkgs."Xinerama" or (errorHandler.sysDepError "Xinerama")) ];
          buildable = true;
        };
      };
    };
  }