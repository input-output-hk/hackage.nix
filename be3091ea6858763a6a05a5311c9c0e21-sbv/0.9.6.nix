{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sbv";
          version = "0.9.6";
        };
        license = "BSD-3-Clause";
        copyright = "Levent Erkok, 2011";
        maintainer = "Levent Erkok (erkokl@gmail.com)";
        author = "Levent Erkok";
        homepage = "http://github.com/LeventErkok/sbv";
        url = "";
        synopsis = "Symbolic Bit Vectors: Prove bit-precise program properties using SMT solvers.";
        description = "Adds support for symbolic bit vectors, allowing formal models of bit-precise\nprograms to be created. Supports symbolic arrays and polynomials over GF(2^n).\nSupports uninterpreted constants and functions. Aims to provide seamless integration\nwith SMT solvers to produce formal property proofs of theoremhood and\nsatisfiability, with counter-examples.";
        buildType = "Custom";
      };
      components = {
        "sbv" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.QuickCheck
            hsPkgs.strict-concurrency
            hsPkgs.old-time
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.HUnit
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        exes = { "SBVUnitTests" = {}; };
      };
    }