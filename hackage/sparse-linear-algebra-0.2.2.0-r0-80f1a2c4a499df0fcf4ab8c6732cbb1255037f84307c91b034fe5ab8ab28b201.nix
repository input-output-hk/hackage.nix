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
      specVersion = "1.10";
      identifier = {
        name = "sparse-linear-algebra";
        version = "0.2.2.0";
      };
      license = "GPL-3.0-only";
      copyright = "2016 Marco Zocca";
      maintainer = "zocca.marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/sparse-linear-algebra";
      url = "";
      synopsis = "Numerical computation in native Haskell";
      description = "/Overview/\n\nThe @sparse-linear-algebra@ library provides iterative linear solvers, matrix decompositions, eigenvalue computations and related utilities. The user interface is provided by the top-level module \"Numeric.LinearAlgebra.Sparse\":\n\n@\nimport           Numeric.LinearAlgebra.Sparse\n@\n\nPlease refer to the README file for usage examples.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hspec)
          (hsPkgs.primitive)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "sparse-linear-algebra" = {
          depends = [ (hsPkgs.base) ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.primitive)
            (hsPkgs.sparse-linear-algebra)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }