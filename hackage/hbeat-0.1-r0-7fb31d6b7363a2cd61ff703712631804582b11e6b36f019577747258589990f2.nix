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
      specVersion = "0";
      identifier = { name = "hbeat"; version = "0.1"; };
      license = "BSD-4-Clause";
      copyright = "Tim Docker, 2007";
      maintainer = "";
      author = "Tim Docker";
      homepage = "";
      url = "";
      synopsis = "A simple step sequencer GUI.";
      description = "A toy step sequencer program written using OpenGL and the SDL libraries. Configuration (including the audio samples used) is controlled via an external file.";
      buildType = "Custom";
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