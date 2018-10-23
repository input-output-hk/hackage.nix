{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "generic-tree";
        version = "15329.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "Matthew Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Generic Tree data type";
      description = "Generic tree type";
      buildType = "Simple";
    };
    components = {
      "generic-tree" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }