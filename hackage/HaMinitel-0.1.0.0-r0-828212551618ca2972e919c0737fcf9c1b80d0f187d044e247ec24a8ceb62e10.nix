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
        name = "HaMinitel";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "zigazou@free.fr";
      author = "Frédéric BISSON";
      homepage = "https://github.com/Zigazou/HaMinitel";
      url = "";
      synopsis = "An Haskell library to drive the french Minitel through a serial port";
      description = "HaMinitel allows you to drive a french Minitel through a serial port in Haskell. It has been started as a mean to discover Haskell and functional programming.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.serialport)
          (hsPkgs.stm)
        ];
      };
    };
  }