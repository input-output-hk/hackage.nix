{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      alsa = false;
      jack = false;
      core = false;
      mm = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "RtMidi";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "kohlrabi@kohlra.biz";
      author = "kohlrabi";
      homepage = "https://github.com/riottracker/RtMidi";
      url = "";
      synopsis = "";
      description = "Haskell wrapper for RtMidi, the lightweight, cross-platform MIDI I/O library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = (([
          (pkgs."stdc++")
        ] ++ pkgs.lib.optionals (flags.alsa) [
          (pkgs."asound")
          (pkgs."pthread")
        ]) ++ pkgs.lib.optional (flags.jack) (pkgs."jack")) ++ pkgs.lib.optionals (flags.core) [
          (pkgs."CoreMIDI")
          (pkgs."CoreAudio")
          (pkgs."CoreFoundation")
        ];
      };
    };
  }