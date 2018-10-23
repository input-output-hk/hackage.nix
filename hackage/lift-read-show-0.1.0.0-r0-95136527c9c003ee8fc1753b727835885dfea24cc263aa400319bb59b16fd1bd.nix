{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lift-read-show";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Helper methods to define `Read1`, `Read2`, `Show1`, `Show2` instances";
      description = "";
      buildType = "Simple";
    };
    components = {
      "lift-read-show" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }