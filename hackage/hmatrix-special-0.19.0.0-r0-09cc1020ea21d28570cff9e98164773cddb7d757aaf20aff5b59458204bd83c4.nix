{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { safe-cheap = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hmatrix-special";
        version = "0.19.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "https://github.com/albertoruiz/hmatrix";
      url = "";
      synopsis = "Interface to GSL special functions";
      description = "Interface to GSL special functions.";
      buildType = "Simple";
    };
    components = {
      "hmatrix-special" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl)
        ];
      };
    };
  }