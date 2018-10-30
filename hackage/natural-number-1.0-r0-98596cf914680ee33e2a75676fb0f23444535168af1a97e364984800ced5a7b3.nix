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
      specVersion = "1.2.3";
      identifier = {
        name = "natural-number";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcross@phys.washington.edu>";
      author = "Gregory Crosswhite";
      homepage = "";
      url = "";
      synopsis = "Natural numbers tagged with a type-level representation of the number.";
      description = "This package provides a simple data structure for\nrepesenting natural numbers with a type that is tagged\nwith the type-level natural number corresponding to the\nvalue of the natural number.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.type-level-natural-number)
          (hsPkgs.type-level-natural-number-induction)
          (hsPkgs.type-equality)
        ];
      };
    };
  }