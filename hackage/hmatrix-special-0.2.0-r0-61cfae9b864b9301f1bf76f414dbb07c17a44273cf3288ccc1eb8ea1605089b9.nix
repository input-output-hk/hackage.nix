{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { safe-cheap = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hmatrix-special";
        version = "0.2.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://perception.inf.um.es/hmatrix";
      url = "";
      synopsis = "Interface to GSL special functions";
      description = "Interface to GSL special functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
        ];
      };
    };
  }