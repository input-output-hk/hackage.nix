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
    flags = { alsa = true; jack = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "RtMidi"; version = "0.7.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ejconlon@gmail.com";
      author = "kohlrabi, Eric Conlon";
      homepage = "https://github.com/riottracker/RtMidi";
      url = "";
      synopsis = "Haskell wrapper for RtMidi, the lightweight, cross-platform MIDI I/O library.";
      description = "Please see the README on GitHub at <https://github.com/riottracker/RtMidi#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = (([
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ] ++ pkgs.lib.optionals (system.isLinux) ((pkgs.lib.optionals (flags.alsa && flags.jack) [
          (pkgs."asound" or (errorHandler.sysDepError "asound"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          (pkgs."jack" or (errorHandler.sysDepError "jack"))
        ] ++ pkgs.lib.optionals (flags.alsa && !flags.jack) [
          (pkgs."asound" or (errorHandler.sysDepError "asound"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
        ]) ++ pkgs.lib.optional (!flags.alsa && flags.jack) (pkgs."jack" or (errorHandler.sysDepError "jack")))) ++ pkgs.lib.optionals (system.isOsx) (pkgs.lib.optional (flags.jack) (pkgs."jack" or (errorHandler.sysDepError "jack")))) ++ pkgs.lib.optional (system.isWindows) (pkgs."winmm" or (errorHandler.sysDepError "winmm"));
        frameworks = pkgs.lib.optionals (system.isOsx) [
          (pkgs."CoreMIDI" or (errorHandler.sysDepError "CoreMIDI"))
          (pkgs."CoreAudio" or (errorHandler.sysDepError "CoreAudio"))
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
        ];
        buildable = true;
      };
      exes = {
        "rtmidi-callback" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."RtMidi" or (errorHandler.buildDepError "RtMidi"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "rtmidi-playback" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."RtMidi" or (errorHandler.buildDepError "RtMidi"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "rtmidi-poll" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."RtMidi" or (errorHandler.buildDepError "RtMidi"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "rtmidi-report" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."RtMidi" or (errorHandler.buildDepError "RtMidi"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          ];
          buildable = true;
        };
      };
      tests = {
        "rtmidi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."RtMidi" or (errorHandler.buildDepError "RtMidi"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }