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
      specVersion = "1.10";
      identifier = {
        name = "constraint-classes";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 guaraqe";
      maintainer = "guaraqe@openmailbox.org";
      author = "guaraqe";
      homepage = "http://github.com/guaraqe/constraint-classes#readme";
      url = "";
      synopsis = "Prelude classes using ConstraintKinds";
      description = "Please see README.org";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }