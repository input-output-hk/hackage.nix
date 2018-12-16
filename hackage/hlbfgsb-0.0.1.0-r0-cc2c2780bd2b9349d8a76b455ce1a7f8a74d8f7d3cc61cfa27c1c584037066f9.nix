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
        name = "hlbfgsb";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan@hlbfgsb.ksp.sk";
      author = "Ivan Labáth";
      homepage = "http://people.ksp.sk/~ivan/hlbfgsb";
      url = "";
      synopsis = "Haskell binding to L-BFGS-B version 3.0";
      description = "Haskell bindings to Nocedal's 3.0 version\nof the Limited memory - Broyden Fletcher Goldfarb Shanno - Bounded\noptimization algorithm.\n\nInitial version, but functional. So far no support for limiting iteration\ncount. A more powerful interface should be developed.\n\nNotice: The fortran code is marked pure, althugh it tends to write\nto standard output at troubled times (should be fixed at some point in time).\n\nFrom homepage:\nSoftware for Large-scale Bound-constrained Optimization L-BFGS-B is a\nlimited-memory quasi-Newton code for bound-constrained optimization, i.e.\nfor problems where the only constraints are of the form l <= x <= u. The\ncurrent release is version 3.0. The distribution file was last changed on\n2011-08-02.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs."gfortran") ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.hlbfgsb)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }