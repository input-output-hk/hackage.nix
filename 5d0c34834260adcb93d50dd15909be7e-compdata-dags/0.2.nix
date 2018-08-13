{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "compdata-dags";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paba@di.ku.dk";
      author = "Patrick Bahr, Emil Axelsson";
      homepage = "";
      url = "";
      synopsis = "Compositional Data Types on DAGs";
      description = "This library implements recursion schemes on directed acyclic\ngraphs. The recursion schemes are explained in detail in the paper\n/Generalising Tree Traversals to DAGs/\n(<http://dx.doi.org/10.1145/2678015.2682539>).";
      buildType = "Simple";
    };
    components = {
      "compdata-dags" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.compdata)
          (hsPkgs.unordered-containers)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.compdata)
            (hsPkgs.unordered-containers)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }