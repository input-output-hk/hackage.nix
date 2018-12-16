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
      specVersion = "0";
      identifier = {
        name = "storable-complex";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<jed@59A2.org>";
      author = "Jed Brown";
      homepage = "";
      url = "";
      synopsis = "Storable instance for Complex";
      description = "Provides a Storable instance for Complex which is binary\ncompatible with C99, C++ and Fortran complex data types.\n\nThe only purpose of this package is to provide a standard\nlocation for this instance so that other packages needing\nthis instance can play nicely together.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }