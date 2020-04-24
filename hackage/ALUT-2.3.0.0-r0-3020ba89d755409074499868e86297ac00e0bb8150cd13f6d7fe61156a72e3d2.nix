{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usenativewindowslibraries = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "ALUT"; version = "2.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sven Panne <svenpanne@gmail.com>";
      author = "";
      homepage = "https://github.com/haskell-openal/ALUT";
      url = "";
      synopsis = "A binding for the OpenAL Utility Toolkit";
      description = "A Haskell binding for the OpenAL Utility Toolkit, which makes\nmanaging of OpenAL contexts, loading sounds in various formats\nand creating waveforms very easy. For more information about the\nC library on which this binding is based, please see:\n<http://distro.ibiblio.org/rootlinux/rootlinux-ports/more/freealut/freealut-1.1.0/doc/alut.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."OpenAL" or ((hsPkgs.pkgs-errors).buildDepError "OpenAL"))
          ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."alut" or ((hsPkgs.pkgs-errors).sysDepError "alut")) ]
          else (pkgs.lib).optional (!(system.isOsx || system.isIos)) (pkgs."alut" or ((hsPkgs.pkgs-errors).sysDepError "alut"));
        frameworks = (pkgs.lib).optionals (!(system.isWindows && flags.usenativewindowslibraries)) ((pkgs.lib).optional (system.isOsx || system.isIos) (pkgs."ALUT" or ((hsPkgs.pkgs-errors).sysDepError "ALUT")));
        buildable = true;
        };
      };
    }