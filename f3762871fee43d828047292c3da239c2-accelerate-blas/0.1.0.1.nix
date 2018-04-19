{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      llvm-cpu = true;
      llvm-ptx = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "accelerate-blas";
          version = "0.1.0.1";
        };
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
        accelerate-blas = {
          depends  = ([
            hsPkgs.base
            hsPkgs.accelerate
          ] ++ pkgs.lib.optionals _flags.llvm-cpu [
            hsPkgs.accelerate-llvm
            hsPkgs.accelerate-llvm-native
            hsPkgs.blas-hs
            hsPkgs.llvm-hs-pure
            hsPkgs.storable-complex
          ]) ++ pkgs.lib.optionals _flags.llvm-ptx [
            hsPkgs.accelerate-llvm
            hsPkgs.accelerate-llvm-ptx
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cublas
            hsPkgs.cuda
            hsPkgs.file-embed
            hsPkgs.llvm-hs-pure
            hsPkgs.mtl
            hsPkgs.storable-complex
          ];
        };
        tests = {
          accelerate-blas-test = {
            depends  = ([
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-blas
              hsPkgs.hedgehog
            ] ++ pkgs.lib.optional _flags.llvm-cpu hsPkgs.accelerate-llvm-native) ++ pkgs.lib.optional _flags.llvm-ptx hsPkgs.accelerate-llvm-ptx;
          };
        };
        benchmarks = {
          accelerate-blas-bench = {
            depends  = ([
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-blas
              hsPkgs.criterion
              hsPkgs.mwc-random
              hsPkgs.mwc-random-accelerate
              hsPkgs.deepseq
              hsPkgs.hmatrix
            ] ++ pkgs.lib.optional _flags.llvm-cpu hsPkgs.accelerate-llvm-native) ++ pkgs.lib.optional _flags.llvm-ptx hsPkgs.accelerate-llvm-ptx;
          };
        };
      };
    }