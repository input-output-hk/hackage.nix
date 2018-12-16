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
      specVersion = "1.6";
      identifier = {
        name = "serialport";
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Joris Putcuyps";
      maintainer = "Joris.Putcuyps@gmail.com";
      author = "Joris Putcuyps";
      homepage = "https://github.com/jputcu/serialport";
      url = "";
      synopsis = "Cross platform serial port library.";
      description = "Cross platform haskell library for using the serial port.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
        ] ++ (if !system.isWindows
          then [ (hsPkgs.unix) ]
          else [ (hsPkgs.Win32) ]);
      };
    };
  }