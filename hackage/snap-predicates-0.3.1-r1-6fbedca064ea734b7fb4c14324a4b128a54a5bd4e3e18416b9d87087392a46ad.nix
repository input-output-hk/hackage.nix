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
        name = "snap-predicates";
        version = "0.3.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013 Toralf Wittner, Brendan Hay";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner, Brendan Hay";
      homepage = "";
      url = "";
      synopsis = "Declarative routing for Snap.";
      description = "Provides the definition of a predicate type-class together\nwith several concrete implementations which are used to\nconstrain the set of possible Snap handlers in a type-safe\nway.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.case-insensitive)
          (hsPkgs.snap-core)
          (hsPkgs.attoparsec)
        ];
      };
      tests = {
        "snap-predicates-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.monads-tf)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.case-insensitive)
            (hsPkgs.snap-core)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }