{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hamid"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2012 Balazs Komuves, Hans Hoglund";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Balazs Komuves, Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Binding to the OS level Midi services (fork of system-midi).";
      description = "Cross-platform binding to Midi libraries.\nSupports OS X and Windows (limited testing).\nThe API use the same represeentation as Codec.Midi so system\nand file I/O have the same interface.\nThis package was based on the system-midi package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HCodecs)
          (hsPkgs.newtype)
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.Win32);
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."winmm");
        frameworks = (pkgs.lib).optionals (system.isOsx) [
          (pkgs."CoreFoundation")
          (pkgs."CoreAudio")
          (pkgs."CoreMidi")
          ];
        };
      };
    }