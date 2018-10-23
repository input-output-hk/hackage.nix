{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "alsa-seq-tests";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "Tests for the ALSA sequencer library.";
      description = "Tests for the ALSA sequencer library.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "test1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.alsa)
          ];
        };
        "test2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.alsa)
          ];
        };
        "test3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.alsa)
          ];
        };
        "test4" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.alsa)
          ];
        };
        "test5" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.alsa)
          ];
        };
      };
    };
  }