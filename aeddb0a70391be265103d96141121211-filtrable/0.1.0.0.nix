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
        name = "filtrable";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Class of filtrable containers";
      description = "";
      buildType = "Simple";
    };
    components = {
      "filtrable" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }