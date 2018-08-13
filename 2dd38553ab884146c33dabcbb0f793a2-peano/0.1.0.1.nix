{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "peano";
        version = "0.1.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Peano numbers";
      description = "";
      buildType = "Simple";
    };
    components = {
      "peano" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }