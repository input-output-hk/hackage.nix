{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "gasp";
        version = "1.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "A framework of algebraic classes";
      description = "Soon to appear.";
      buildType = "Simple";
    };
    components = {
      "gasp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
        ];
      };
    };
  }