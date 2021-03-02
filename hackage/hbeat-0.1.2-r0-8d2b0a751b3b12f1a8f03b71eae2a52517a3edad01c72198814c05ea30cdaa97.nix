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
      identifier = { name = "hbeat"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Tim Docker, 2007";
      maintainer = "Tim Docker";
      author = "Tim Docker";
      homepage = "http://www.dockerz.net/software/hbeat.html";
      url = "";
      synopsis = "A simple step sequencer GUI.";
      description = "A toy step sequencer program written using OpenGL and the SDL libraries.\nConfiguration (including the audio samples used) is controlled via an external file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hbeat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          libs = [
            (pkgs."SDL" or (errorHandler.sysDepError "SDL"))
            (pkgs."SDL_mixer" or (errorHandler.sysDepError "SDL_mixer"))
            ];
          buildable = true;
          };
        };
      };
    }