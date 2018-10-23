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
        name = "constraint";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "m.farkasdyck@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Reified constraints";
      description = "";
      buildType = "Simple";
    };
    components = {
      "constraint" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.category)
        ];
      };
    };
  }