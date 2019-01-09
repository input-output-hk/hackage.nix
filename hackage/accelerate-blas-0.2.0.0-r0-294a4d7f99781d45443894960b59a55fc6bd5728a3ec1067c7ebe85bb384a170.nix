{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm-cpu = true; llvm-ptx = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "accelerate-blas"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tmcdonell@cse.unsw.edu.au";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Numeric Linear Algebra in Accelerate";
      description = "Linear systems, matrix decompositions, and other numerical computations for\nuse in Accelerate. Most operations are implemented efficiently via FFI calls\nto BLAS and LAPACK\n\nFor further information refer to the main /Accelerate/ package:\n<http://hackage.haskell.org/package/accelerate>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.accelerate)
          ] ++ (pkgs.lib).optionals (flags.llvm-cpu) [
          (hsPkgs.accelerate-llvm)
          (hsPkgs.accelerate-llvm-native)
          (hsPkgs.blas-hs)
          (hsPkgs.llvm-hs-pure)
          ]) ++ (pkgs.lib).optionals (flags.llvm-ptx) [
          (hsPkgs.accelerate-llvm)
          (hsPkgs.accelerate-llvm-ptx)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cublas)
          (hsPkgs.cuda)
          (hsPkgs.file-embed)
          (hsPkgs.llvm-hs-pure)
          (hsPkgs.mtl)
          ];
        };
      tests = {
        "test-llvm-native" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-blas)
            (hsPkgs.accelerate-llvm-native)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            ];
          };
        "test-llvm-ptx" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-blas)
            (hsPkgs.accelerate-llvm-ptx)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            ];
          };
        };
      benchmarks = {
        "bench-hmatrix" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.mwc-random)
            (hsPkgs.deepseq)
            (hsPkgs.hmatrix)
            ];
          };
        "bench-llvm-native" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-blas)
            (hsPkgs.accelerate-llvm-native)
            (hsPkgs.criterion)
            (hsPkgs.mwc-random)
            (hsPkgs.mwc-random-accelerate)
            ];
          };
        "bench-llvm-ptx" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-blas)
            (hsPkgs.accelerate-llvm-ptx)
            (hsPkgs.criterion)
            (hsPkgs.mwc-random)
            (hsPkgs.mwc-random-accelerate)
            ];
          };
        };
      };
    }