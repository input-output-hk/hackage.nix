{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bitmap";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "A library for handling and manipulating bitmaps (rectangular pixel arrays).";
      description = "A library for handling and manipulating bitmaps (that is,\nrectangular pixel arrays).";
      buildType = "Simple";
    };
    components = {
      "bitmap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }