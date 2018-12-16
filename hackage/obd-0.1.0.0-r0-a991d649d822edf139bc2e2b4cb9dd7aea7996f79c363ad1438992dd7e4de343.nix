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
      specVersion = "1.10";
      identifier = {
        name = "obd";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2016 Henri Verroken";
      maintainer = "henriverroken@gmail.com";
      author = "Henri Verroken";
      homepage = "https://github.com/hverr/haskell-obd#readme";
      url = "";
      synopsis = "Communicate to OBD interfaces over ELM327";
      description = "Haskell library to communicate with OBD-II over ELM327,\nwith terminal and simulator included.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.dimensional)
          (hsPkgs.either)
          (hsPkgs.io-streams)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.serialport)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "obd-terminal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.obd)
            (hsPkgs.bytestring)
            (hsPkgs.haskeline)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "obd-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.obd)
          ];
        };
      };
    };
  }