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
      specVersion = "1.2";
      identifier = {
        name = "alsa-pcm-tests";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Iavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Tests for the ALSA audio signal library.";
      description = "Tests for the ALSA audio signal library.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "duplex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.alsa)
          ];
        };
        "play" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.alsa)
          ];
        };
        "record" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.alsa)
          ];
        };
        "volume_meter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.alsa)
          ];
        };
      };
    };
  }