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
        name = "pgm";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "fred.ross@epfl.ch";
      author = "Frederick Ross";
      homepage = "";
      url = "";
      synopsis = "Pure Haskell implementation of PGM image format";
      description = "Reads and writes 8 and 16 bit PGM images, loading them into Haskell as arrays.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.array)
        ];
      };
    };
  }