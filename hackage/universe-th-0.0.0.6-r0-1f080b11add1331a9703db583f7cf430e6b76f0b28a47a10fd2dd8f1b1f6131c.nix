{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "universe-th"; version = "0.0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "http://github.com/jfishcoff/universe-th";
      url = "";
      synopsis = "Construct a Dec's ancestor list.";
      description = "This package provides the ability to pass in a name for a type and it will\nreturn all of the Dec's that are necessary for the type and its ancestors to be\nconstructed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.composition)
          (hsPkgs.tuple)
          (hsPkgs.uniplate)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.composition)
            (hsPkgs.mtl)
            (hsPkgs.DebugTraceHelpers)
            (hsPkgs.QuickCheck)
            (hsPkgs.tuple)
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