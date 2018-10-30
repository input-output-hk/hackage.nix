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
      specVersion = "1.8";
      identifier = {
        name = "ConstraintKinds";
        version = "0.0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "";
      url = "";
      synopsis = "Repackages standard type classes with the ConstraintKinds extension";
      description = "This module provides more flexible versions of common type classes that use the ConstraintKinds extension.  This allows us to make types that require constraints instances of the popular classes.  For example, we reimplement Functor and Foldable using the ContraintKinds style.  This allows us to manipulate lists and unboxed vectors using the same functions.\n\nThis library needs a lot of work before it can be considered ready for others to use.  Right now, only those instances needed by the HLearn library have been implemented in this library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.vector)
        ];
      };
    };
  }