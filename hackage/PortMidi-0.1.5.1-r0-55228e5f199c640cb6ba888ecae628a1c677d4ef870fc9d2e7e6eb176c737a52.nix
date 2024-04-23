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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "PortMidi"; version = "0.1.5.1"; };
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
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = if system.isLinux
          then [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ]
          else pkgs.lib.optionals (!system.isOsx) (pkgs.lib.optional (system.isWindows) (pkgs."winmm" or (errorHandler.sysDepError "winmm")));
        frameworks = pkgs.lib.optionals (!system.isLinux) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."CoreMIDI" or (errorHandler.sysDepError "CoreMIDI"))
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
          (pkgs."CoreAudio" or (errorHandler.sysDepError "CoreAudio"))
        ]);
        buildable = true;
      };
    };
  }