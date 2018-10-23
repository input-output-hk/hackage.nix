{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hamid";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Balazs Komuves";
      maintainer = "hans@hanshoglund.se";
      author = "Balazs Komuves";
      homepage = "";
      url = "";
      synopsis = "Binding to the OS level MIDI services";
      description = "Partial implementation of the MIDI 1.0 standard to communicate\nwith physical or virtual MIDI devices, eg. MIDI keyboards.\nSupported operating systems are Mac OS X and Win32 (not tested\nunder Leopard and Vista). See also the alsa-midi library for similar\nfunction under Linux. Please note that there was no effort made (yet) to\nbe compatible with the other existing Haskell MIDI libraries.\nFork by Hans Höglund, adding support for Codec.Midi types et al.";
      buildType = "Simple";
    };
    components = {
      "hamid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HCodecs)
          (hsPkgs.newtype)
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