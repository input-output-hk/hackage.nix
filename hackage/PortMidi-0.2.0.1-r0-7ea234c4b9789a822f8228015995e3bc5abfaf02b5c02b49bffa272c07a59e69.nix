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
    flags = { vendoredc = false; pkgconfig = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "PortMidi"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>\n, Henning Thielemann <haskell@henning-thielemann.de>";
      author = "";
      homepage = "http://github.com/PortMidi/PortMidi";
      url = "";
      synopsis = "A binding for PortMedia/PortMidi";
      description = "A Haskell binding for PortMedia/PortMidi";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = if flags.vendoredc
          then if system.isLinux || system.isFreebsd
            then [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ]
            else pkgs.lib.optionals (!system.isOsx) (pkgs.lib.optional (system.isWindows) (pkgs."winmm" or (errorHandler.sysDepError "winmm")))
          else pkgs.lib.optional (!flags.pkgconfig) (pkgs."portmidi" or (errorHandler.sysDepError "portmidi"));
        frameworks = pkgs.lib.optionals (flags.vendoredc) (pkgs.lib.optionals (!(system.isLinux || system.isFreebsd)) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."CoreMIDI" or (errorHandler.sysDepError "CoreMIDI"))
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
          (pkgs."CoreAudio" or (errorHandler.sysDepError "CoreAudio"))
        ]));
        pkgconfig = pkgs.lib.optionals (!flags.vendoredc) (pkgs.lib.optional (flags.pkgconfig) (pkgconfPkgs."portmidi" or (errorHandler.pkgConfDepError "portmidi")));
        buildable = true;
      };
    };
  }