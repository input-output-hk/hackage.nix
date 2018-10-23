{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "safeint";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Well-Typed LLP";
      maintainer = "Andres Loeh <andres@well-typed.com>";
      author = "Andres Loeh";
      homepage = "";
      url = "";
      synopsis = "overflow-checked Int type";
      description = "Defines a variant of Haskell's Int type that is overflow-checked. If\nan overflow or arithmetic error occurs, a run-time exception is thrown.\n\nCurrently still in an experimental stage. Everything can change.";
      buildType = "Simple";
    };
    components = {
      "safeint" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "TestSafeInt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.safeint)
          ];
        };
      };
    };
  }