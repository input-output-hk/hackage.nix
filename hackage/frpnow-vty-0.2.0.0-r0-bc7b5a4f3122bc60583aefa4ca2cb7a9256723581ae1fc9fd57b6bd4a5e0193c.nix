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
        name = "frpnow-vty";
        version = "0.2.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jaro.reinders@gmail.com";
      author = "Jaro Reinders";
      homepage = "https://github.com/noughtmare/frpnow-vty";
      url = "";
      synopsis = "Program terminal applications with vty and frpnow!";
      description = "This package allows you to create vty terminal\napplications using frpnow's frp interface.\n\nA demo executable is also included to show how to\nuse this library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.frpnow)
          (hsPkgs.vty)
        ];
      };
      exes = {
        "frpnow-vty-demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.frpnow-vty)
            (hsPkgs.vty)
            (hsPkgs.frpnow)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }