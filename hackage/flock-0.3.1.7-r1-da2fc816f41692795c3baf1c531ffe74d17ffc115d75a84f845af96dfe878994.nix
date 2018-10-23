{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "flock";
        version = "0.3.1.7";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Ian Lynagh, 2007";
      maintainer = "Erik Hesselink <hesselink@gmail.com>";
      author = "Ian Lynagh";
      homepage = "http://github.com/hesselink/flock";
      url = "";
      synopsis = "Wrapper for flock(2)";
      description = "Simple wrapper around flock(2).";
      buildType = "Simple";
    };
    components = {
      "flock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.unix)
        ];
      };
    };
  }