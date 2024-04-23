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
    flags = { alsa = false; jack = false; core = false; mm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "RtMidi"; version = "0.1.0.0"; };
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
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = (([
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ] ++ pkgs.lib.optionals (flags.alsa) [
          (pkgs."asound" or (errorHandler.sysDepError "asound"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
        ]) ++ pkgs.lib.optional (flags.jack) (pkgs."jack" or (errorHandler.sysDepError "jack"))) ++ pkgs.lib.optionals (flags.core) [
          (pkgs."CoreMIDI" or (errorHandler.sysDepError "CoreMIDI"))
          (pkgs."CoreAudio" or (errorHandler.sysDepError "CoreAudio"))
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
        ];
        buildable = true;
      };
    };
  }