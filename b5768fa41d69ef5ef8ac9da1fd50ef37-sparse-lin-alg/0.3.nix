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
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alexey.alekhin@me.com";
      author = "Alexey Alekhin";
      homepage = "http://github.com/laughedelic/sparse-lin-alg";
      url = "";
      synopsis = "Small library for effective linear algebra on sparse matrices";
      description = "Sparse matrices and vectors are represented using IntMaps, which store non-zero values. There are some useful functions for computations on them. Also some linear algebra algorithms will be included. At the moment, the only is reduction of the matrix to the staircase form.";
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