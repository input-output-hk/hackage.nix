{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "automata"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/automata";
      url = "";
      synopsis = "automata";
      description = "This package implements the following:\n\nDeterministic Finite State Automata (DFSA)\n\nNon-Deterministic Finite State Automata (NFSA)\n\nDeterministic Finite State Transducers (DFST)\n\nNon-Deterministic Finite State Transducers (NFST)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.primitive)
          (hsPkgs.primitive-containers)
          (hsPkgs.containers)
          (hsPkgs.contiguous)
          (hsPkgs.semirings)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.automata)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.enum-types)
            (hsPkgs.leancheck)
            (hsPkgs.leancheck-enum-instances)
            (hsPkgs.primitive)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.quickcheck-enum-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-leancheck)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }