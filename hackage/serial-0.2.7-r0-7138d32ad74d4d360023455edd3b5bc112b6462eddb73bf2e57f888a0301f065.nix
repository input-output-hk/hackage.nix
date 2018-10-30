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
        name = "serial";
        version = "0.2.7";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "José Manuel Calderón Trilla <hackage@jmct.cc>";
      author = "Frederick Ross";
      homepage = "";
      url = "";
      synopsis = "POSIX serial port wrapper";
      description = "Provides a clean interface to working with POSIX serial ports in Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
        ];
      };
    };
  }