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
    flags = { alsa = true; jack = false; core = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "RtMidi"; version = "0.2.0.0"; };
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
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ];
        libs = ([
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ] ++ pkgs.lib.optionals (flags.alsa && system.isLinux) [
          (pkgs."asound" or (errorHandler.sysDepError "asound"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
        ]) ++ pkgs.lib.optional (flags.jack && (system.isLinux || system.isOsx)) (pkgs."jack" or (errorHandler.sysDepError "jack"));
        frameworks = pkgs.lib.optionals (flags.core && system.isOsx) [
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
          ];
          buildable = true;
        };
        "rtmidi-playback" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."RtMidi" or (errorHandler.buildDepError "RtMidi"))
          ];
          buildable = true;
        };
        "rtmidi-poll" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."RtMidi" or (errorHandler.buildDepError "RtMidi"))
          ];
          buildable = true;
        };
        "rtmidi-query" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."RtMidi" or (errorHandler.buildDepError "RtMidi"))
          ];
          buildable = true;
        };
      };
      tests = {
        "rtmidi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."RtMidi" or (errorHandler.buildDepError "RtMidi"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }