{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hbeat";
        version = "0.1.2";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.OpenGL)
            (hsPkgs.SDL)
            (hsPkgs.SDL-mixer)
            (hsPkgs.mtl)
          ];
          libs = [
            (pkgs."SDL")
            (pkgs."SDL_mixer")
          ];
        };
      };
    };
  }