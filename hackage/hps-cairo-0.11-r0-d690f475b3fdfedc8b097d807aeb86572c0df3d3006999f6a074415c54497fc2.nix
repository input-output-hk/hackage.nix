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
      specVersion = "1.8";
      identifier = {
        name = "hps-cairo";
        version = "0.11";
      };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hps-cairo";
      url = "";
      synopsis = "Cairo rendering for the haskell postscript library";
      description = "Cairo rendering for the haskell postscript library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cairo)
          (hsPkgs.gtk)
          (hsPkgs.hps)
        ];
      };
      exes = {
        "hps-cairo-animation" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cairo)
            (hsPkgs.gtk)
            (hsPkgs.hps)
            (hsPkgs.hps-cairo)
            (hsPkgs.random)
          ];
        };
        "hps-cairo-screen" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cairo)
            (hsPkgs.hps)
            (hsPkgs.hps-cairo)
          ];
        };
      };
    };
  }