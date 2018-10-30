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
        name = "th-instances";
        version = "0.1.0.14";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "";
      url = "";
      synopsis = "A place to collect orphan instances for Template Haskell";
      description = "A IsString for name, and the beginnings of Arbitrary instances ... I have a instance for Type ... almost ... missing the ForallT.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.QuickCheck)
          (hsPkgs.checkers)
          (hsPkgs.th-lift)
          (hsPkgs.th-kinds)
          (hsPkgs.mtl)
          (hsPkgs.derive)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.DebugTraceHelpers)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.th-lift)
            (hsPkgs.th-kinds)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.checkers)
            (hsPkgs.derive)
          ];
        };
      };
    };
  }