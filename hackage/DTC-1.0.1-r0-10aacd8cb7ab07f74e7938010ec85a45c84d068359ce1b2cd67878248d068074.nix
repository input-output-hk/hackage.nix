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
        name = "DTC";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
      author = "Daniel Diaz";
      homepage = "http://ddiaz.asofilak.es/packages/DTC";
      url = "";
      synopsis = "Data To Class transformation.";
      description = "Transform data declarations to class definitions.\n\nThe way is explained in /Data Declarations to Class Definitions/.\nYou can find more information in the homepage of the package.\n\nChanges from last version:\n\n* Modified some documentation.\n\n* Fixed a non-exhaustive pattern matching error in @dataToClassWith@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-src)
        ];
      };
    };
  }