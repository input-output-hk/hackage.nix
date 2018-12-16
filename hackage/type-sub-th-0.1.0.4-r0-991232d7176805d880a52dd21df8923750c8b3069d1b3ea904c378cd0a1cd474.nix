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
        name = "type-sub-th";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "http://github.com/jfischoff/type-sub-th";
      url = "";
      synopsis = "Substitute types for other types with Template Haskell";
      description = "Substitute types for types. Works with various Template Haskell types including Dec's, Con's and Types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.DebugTraceHelpers)
          (hsPkgs.QuickCheck)
          (hsPkgs.HUnit)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework)
          (hsPkgs.uniplate)
          (hsPkgs.tuple)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.DebugTraceHelpers)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
            (hsPkgs.uniplate)
            (hsPkgs.checkers)
            (hsPkgs.th-instances)
          ];
        };
      };
    };
  }