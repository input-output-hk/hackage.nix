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
      specVersion = "2.0";
      identifier = {
        name = "primitive-containers";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/primitive-containers";
      url = "";
      synopsis = "containers backed by arrays";
      description = "Containers backed by flat arrays. Updates require rebuilding the\nentire structure, but lookups are cache coherent.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.primitive-sort)
          (hsPkgs.contiguous)
          (hsPkgs.hashable)
          (hsPkgs.deepseq)
          (hsPkgs.quantification)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.primitive)
            (hsPkgs.primitive-containers)
            (hsPkgs.quantification)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "gauge" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.primitive)
            (hsPkgs.primitive-containers)
            (hsPkgs.ghc-prim)
            (hsPkgs.gauge)
            (hsPkgs.random)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }