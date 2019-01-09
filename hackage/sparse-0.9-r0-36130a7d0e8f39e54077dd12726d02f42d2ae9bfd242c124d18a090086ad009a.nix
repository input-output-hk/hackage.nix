{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      test-properties = true;
      test-doctests = true;
      test-hlint = true;
      optimize = true;
      llvm = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "sparse"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/sparse";
      url = "";
      synopsis = "A playground of sparse linear algebra primitives using Morton ordering";
      description = "A playground of sparse linear algebra primitives using Morton ordering\n\nThe design of this library is described in the series \\\"Revisiting Matrix Multiplication\\\" on FP Complete's School of Haskell.\n\n<https://www.fpcomplete.com/user/edwardk/revisiting-matrix-multiplication/>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.deepseq)
          (hsPkgs.hybrid-vectors)
          (hsPkgs.lens)
          (hsPkgs.primitive)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          ];
        };
      tests = {
        "properties" = {
          depends = (pkgs.lib).optionals (!(!flags.test-properties)) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hybrid-vectors)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.QuickCheck)
            (hsPkgs.sparse)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
            ];
          };
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.deepseq)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.semigroups)
            (hsPkgs.simple-reflect)
            ];
          };
        };
      benchmarks = {
        "mm" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.sparse)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }