{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "specialize-th"; version = "0.0.0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/specialize-th";
      url = "";
      synopsis = "Create specialized types from polymorphic ones using TH";
      description = "Very Alpha. Minimal Testing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.derive)
          (hsPkgs.composition)
          (hsPkgs.th-expand-syns)
          (hsPkgs.newtype-th)
          (hsPkgs.newtype)
          (hsPkgs.MissingH)
          (hsPkgs.uniplate)
          (hsPkgs.type-sub-th)
          (hsPkgs.universe-th)
          (hsPkgs.tuple)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.DebugTraceHelpers)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.checkers)
            (hsPkgs.derive)
            (hsPkgs.composition)
            (hsPkgs.th-expand-syns)
            (hsPkgs.newtype-th)
            (hsPkgs.newtype)
            (hsPkgs.MissingH)
            (hsPkgs.uniplate)
            (hsPkgs.type-sub-th)
            (hsPkgs.universe-th)
            ];
          };
        };
      };
    }