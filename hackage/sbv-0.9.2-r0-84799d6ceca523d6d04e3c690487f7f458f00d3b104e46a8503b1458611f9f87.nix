{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "sbv"; version = "0.9.2"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2011";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://github.com/LeventErkok/sbv";
      url = "";
      synopsis = "Symbolic Bit Vectors: Prove bit-precise program properties using SMT solvers.";
      description = "Adds support for symbolic bit vectors, allowing formal models of bit-precise\nprograms to be created. Supports symbolic arrays and polynomials over GF(2^n).\nAims to provide seamless integration with SMT solvers to produce formal\nproperty proofs of theoremhood and satisfiability, with counter-examples.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.QuickCheck)
          (hsPkgs.strict-concurrency)
          (hsPkgs.old-time)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.HUnit)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ];
        };
      exes = { "SBVUnitTests" = {}; };
      };
    }