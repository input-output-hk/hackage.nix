{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "PortMidi";
        version = "0.1.5.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>";
      author = "";
      homepage = "http://github.com/ninegua/PortMidi";
      url = "";
      synopsis = "A binding for PortMedia/PortMidi";
      description = "A Haskell binding for PortMedia/PortMidi";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
        libs = if system.isLinux || system.isFreebsd
          then [ (pkgs."asound") ]
          else pkgs.lib.optionals (!system.isOsx) (pkgs.lib.optional (system.isWindows) (pkgs."winmm"));
        frameworks = pkgs.lib.optionals (!(system.isLinux || system.isFreebsd)) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."CoreMIDI")
          (pkgs."CoreFoundation")
          (pkgs."CoreAudio")
        ]);
      };
    };
  }