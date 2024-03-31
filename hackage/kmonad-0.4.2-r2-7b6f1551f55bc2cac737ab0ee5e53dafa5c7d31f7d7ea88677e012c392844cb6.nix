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
    flags = { kext = false; dext = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "kmonad"; version = "0.4.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "janssen.dhj@gmail.com";
      author = "David Janssen";
      homepage = "";
      url = "";
      synopsis = "Advanced keyboard remapping utility";
      description = "KMonad is a cross-platform command-line utility that runs as a daemon. It\ncaptures keyboard input (exactly how depends on the OS) and remaps it. The\nmapping is highly configurable, and provides options like (transparent) layer\noverlays, tap-mod buttons, multi-tap buttons, leader-key style buttons, and\nkeyboard macros. Functionality heavily inspired by the QMK-firmware.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        libs = (pkgs.lib).optional (system.isOsx) (pkgs."c++" or (errorHandler.sysDepError "c++"));
        frameworks = (pkgs.lib).optionals (system.isOsx) [
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
          (pkgs."IOKit" or (errorHandler.sysDepError "IOKit"))
          ];
        buildable = true;
        };
      exes = {
        "kmonad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kmonad" or (errorHandler.buildDepError "kmonad"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kmonad" or (errorHandler.buildDepError "kmonad"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }