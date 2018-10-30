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
        name = "checkers";
        version = "0.4.8";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2013 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "";
      url = "";
      synopsis = "Check properties on standard classes and data structures.";
      description = "''Checkers'' wraps up the expected properties associated with various\nstandard type classes as QuickCheck properties.  Also some morphism\nproperties.  It also provides arbitrary instances and generator combinators\nfor common data types.\n\n&#169; 2008-2013 by Conal Elliott; BSD3 license.\n\nContributions from: Thomas Davie.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          (hsPkgs.array)
          (hsPkgs.semigroupoids)
        ];
      };
    };
  }