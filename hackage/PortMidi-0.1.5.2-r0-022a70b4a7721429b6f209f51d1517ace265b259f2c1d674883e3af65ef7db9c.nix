{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "PortMidi";
        version = "0.1.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>";
      author = "";
      homepage = "http://haskell.org/haskellwiki/PortMidi";
      url = "";
      synopsis = "A binding for PortMedia/PortMidi";
      description = "A Haskell binding for PortMedia/PortMidi";
      buildType = "Simple";
    };
    components = {
      "PortMidi" = {
        depends  = [ (hsPkgs.base) ];
        libs = if system.isLinux
          then [ (pkgs."asound") ]
          else pkgs.lib.optionals (!system.isOsx) (pkgs.lib.optional (system.isWindows) (pkgs."winmm"));
        frameworks = pkgs.lib.optionals (!system.isLinux) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."CoreMIDI")
          (pkgs."CoreFoundation")
          (pkgs."CoreAudio")
        ]);
      };
    };
  }