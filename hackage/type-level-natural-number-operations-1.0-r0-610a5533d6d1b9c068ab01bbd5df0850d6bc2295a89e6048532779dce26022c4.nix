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
        name = "type-level-natural-number-operations";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcross@phys.washington.edu>";
      author = "Gregory Crosswhite";
      homepage = "";
      url = "";
      synopsis = "Basic operations on type-level natural numbers.";
      description = "This package provides some basic operations that do not\nrequire the UndecideableInstances extension on type-level\nnatural numbers.  Specifically, this package provides the\nPlus and Minus type functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.type-level-natural-number)
        ];
      };
    };
  }