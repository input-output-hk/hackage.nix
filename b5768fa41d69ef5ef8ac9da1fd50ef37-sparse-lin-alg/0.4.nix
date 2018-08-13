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
      specVersion = "1.8";
      identifier = {
        name = "sparse-lin-alg";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alexey.alekhin@me.com";
      author = "Alexey Alekhin";
      homepage = "http://github.com/laughedelic/sparse-lin-alg";
      url = "";
      synopsis = "Effective linear algebra on sparse matrices";
      description = "Sparse matrices and vectors are represented using IntMaps, which store non-zero values. This library provides some useful functions for computations on them. Also some linear algebra algorithms are included. At the moment, they work only on integer domain.";
      buildType = "Simple";
    };
    components = {
      "sparse-lin-alg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }