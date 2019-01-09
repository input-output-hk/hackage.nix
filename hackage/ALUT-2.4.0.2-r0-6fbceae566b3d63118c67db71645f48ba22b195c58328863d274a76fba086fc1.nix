{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usenativewindowslibraries = true; buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ALUT"; version = "2.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2005-2016 Sven Panne";
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
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.StateVar)
          (hsPkgs.OpenAL)
          ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."alut") ]
          else (pkgs.lib).optional (!system.isIos) (pkgs."alut");
        frameworks = (pkgs.lib).optionals (!(system.isWindows && flags.usenativewindowslibraries)) ((pkgs.lib).optional (system.isIos) (pkgs."ALUT"));
        };
      exes = {
        "Basic-HelloWorld" = { depends = [ (hsPkgs.base) (hsPkgs.ALUT) ]; };
        "Basic-OpenALInfo" = {
          depends = [ (hsPkgs.base) (hsPkgs.pretty) (hsPkgs.ALUT) ];
          };
        "Basic-PlayFile" = { depends = [ (hsPkgs.base) (hsPkgs.ALUT) ]; };
        "TestSuite-TestErrorStuff" = {
          depends = [ (hsPkgs.base) (hsPkgs.ALUT) ];
          };
        "TestSuite-TestFileLoader" = {
          depends = [ (hsPkgs.base) (hsPkgs.ALUT) ];
          };
        "TestSuite-TestMemoryLoader" = {
          depends = [ (hsPkgs.base) (hsPkgs.ALUT) ];
          };
        "TestSuite-TestVersion" = {
          depends = [ (hsPkgs.base) (hsPkgs.ALUT) ];
          };
        "TestSuite-TestWaveforms" = {
          depends = [ (hsPkgs.base) (hsPkgs.ALUT) ];
          };
        };
      };
    }