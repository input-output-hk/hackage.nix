{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usenativewindowslibraries = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ALUT"; version = "2.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2005-2015 Sven Panne";
      maintainer = "Sven Panne <svenpanne@gmail.com>";
      author = "Sven Panne";
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
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
          (hsPkgs."OpenAL" or ((hsPkgs.pkgs-errors).buildDepError "OpenAL"))
          ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."alut" or ((hsPkgs.pkgs-errors).sysDepError "alut")) ]
          else (pkgs.lib).optional (!system.isIos) (pkgs."alut" or ((hsPkgs.pkgs-errors).sysDepError "alut"));
        frameworks = (pkgs.lib).optionals (!(system.isWindows && flags.usenativewindowslibraries)) ((pkgs.lib).optional (system.isIos) (pkgs."ALUT" or ((hsPkgs.pkgs-errors).sysDepError "ALUT")));
        buildable = true;
        };
      };
    }