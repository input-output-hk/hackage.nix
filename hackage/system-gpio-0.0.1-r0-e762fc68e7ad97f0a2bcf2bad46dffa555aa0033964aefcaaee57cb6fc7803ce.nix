{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "system-gpio";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013, Kenny Zhuo Ming Lu";
      maintainer = "luzhuomi@gmail.com";
      author = "Kenny Zhuo Ming Lu";
      homepage = "https://github.com/luzhuomi/system-gpio/";
      url = "https://github.com/luzhuomi/system-gpio/";
      synopsis = "GPIO wrapper libary for Raspberry Pi";
      description = "";
      buildType = "Simple";
    };
    components = {
      "system-gpio" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.array)
        ];
      };
    };
  }