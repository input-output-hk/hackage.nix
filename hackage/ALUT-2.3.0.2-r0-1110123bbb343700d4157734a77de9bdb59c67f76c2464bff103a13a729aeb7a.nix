{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      usenativewindowslibraries = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ALUT";
        version = "2.3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sven Panne <svenpanne@gmail.com>";
      author = "Sven Panne";
      homepage = "https://github.com/haskell-openal/ALUT";
      url = "";
      synopsis = "A binding for the OpenAL Utility Toolkit";
      description = "A Haskell binding for the OpenAL Utility Toolkit, which makes\nmanaging of OpenAL contexts, loading sounds in various formats\nand creating waveforms very easy. For more information about the\nC library on which this binding is based, please see:\n<http://distro.ibiblio.org/rootlinux/rootlinux-ports/more/freealut/freealut-1.1.0/doc/alut.html>.";
      buildType = "Simple";
    };
    components = {
      "ALUT" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
          (hsPkgs.OpenAL)
        ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."alut") ]
          else pkgs.lib.optional (!system.isIos) (pkgs."alut");
        frameworks = pkgs.lib.optionals (!(system.isWindows && flags.usenativewindowslibraries)) (pkgs.lib.optional (system.isIos) (pkgs."ALUT"));
      };
    };
  }