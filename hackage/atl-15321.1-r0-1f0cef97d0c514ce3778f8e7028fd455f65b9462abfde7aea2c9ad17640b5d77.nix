{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "atl";
        version = "15321.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "Matthew Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Arrow Transformer Library";
      description = "Arrow Transformer Library";
      buildType = "Simple";
    };
    components = {
      "atl" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }