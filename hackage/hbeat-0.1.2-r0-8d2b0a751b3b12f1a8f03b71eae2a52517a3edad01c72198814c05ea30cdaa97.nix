{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-mixer" or ((hsPkgs.pkgs-errors).buildDepError "SDL-mixer"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          libs = [
            (pkgs."SDL" or ((hsPkgs.pkgs-errors).sysDepError "SDL"))
            (pkgs."SDL_mixer" or ((hsPkgs.pkgs-errors).sysDepError "SDL_mixer"))
            ];
          buildable = true;
          };
        };
      };
    }