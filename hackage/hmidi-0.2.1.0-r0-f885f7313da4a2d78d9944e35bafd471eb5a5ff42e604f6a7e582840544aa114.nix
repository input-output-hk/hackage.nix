{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { nonoteoff = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hmidi";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2013 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Binding to the OS level MIDI services";
      description = "Partial implementation of the MIDI 1.0 standard to communicate\nwith physical or virtual MIDI devices, eg. MIDI keyboards.\nSupported operating systems are Mac OS X and Windows.\nSee also the alsa-midi library for similar\nfunction under Linux. Please note that there was no effort made (yet) to\nbe compatible with the other existing Haskell MIDI libraries.";
      buildType = "Simple";
    };
    components = {
      "hmidi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
        libs = pkgs.lib.optional (system.isWindows) (pkgs."winmm");
        frameworks = pkgs.lib.optionals (system.isOsx) [
          (pkgs."CoreFoundation")
          (pkgs."CoreAudio")
          (pkgs."CoreMIDI")
        ];
      };
    };
  }