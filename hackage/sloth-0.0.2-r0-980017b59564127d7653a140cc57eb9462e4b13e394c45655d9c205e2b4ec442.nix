{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "sloth";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan Christiansen <info@monoid-it.de>";
      author = "Jan Christiansen";
      homepage = "";
      url = "";
      synopsis = "Testing for minimal strictness";
      description = "Sloth is a library for testing whether functions are\nminmally strict.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.mtl)
        ];
      };
    };
  }