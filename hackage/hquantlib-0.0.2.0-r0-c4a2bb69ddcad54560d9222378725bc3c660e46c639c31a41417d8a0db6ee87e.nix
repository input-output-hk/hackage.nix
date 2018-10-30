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
      specVersion = "1.10.0";
      identifier = {
        name = "hquantlib";
        version = "0.0.2.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Pavel Ryzhov <pavel.ryzhov@gmail.com>";
      author = "Pavel Ryzhov";
      homepage = "http://code.google.com/p/hquantlib/";
      url = "";
      synopsis = "HQuantLib is a port of essencial parts of QuantLib to Haskell";
      description = "HQuantLib is intended to be a functional style port of QuantLib (http://quantlib.org)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.haskell2010)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-special)
          (hsPkgs.gsl-random)
          (hsPkgs.parallel)
        ];
      };
    };
  }