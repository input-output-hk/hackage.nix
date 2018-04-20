{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      no-vec = false;
      vec256 = false;
      vec512 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "primitive-simd";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Anselm Jonas Scholl";
        maintainer = "anselm.scholl@tu-harburg.de";
        author = "Anselm Jonas Scholl";
        homepage = "";
        url = "";
        synopsis = "SIMD data types and functions";
        description = "This package provides a lifted version of the SIMD data types\nand instructions from ghc-prim.\n\nThe implementation is based on type families to provide a\nuniform interface to all different vector types. Instances\nfor numeric operations, 'Prim', 'Storable' and unboxed vector\ninstances are provided.\n\nAlthough not all processors support 256 or 512-bit vectors\nthis package provides a uniform interface. Vectors which\nare bigger than supported are modeled by combining smaller\nvectors. If the same code is compiled on a computer supporting\nlarger vectors the smaller vectors are replaced by larger\nvectors.\n\nNote: This package needs to be compiled with LLVM as the NCG\ndoes not know how to deal with SIMD-instructions. If LLVM is\nnot available, use -f no-vec to disable the use of SIMD instructions.\nWhile this will give you no speedup, it will work with plain\nHaskell (and should even work with GHCJS).";
        buildType = "Simple";
      };
      components = {
        primitive-simd = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.primitive
            hsPkgs.vector
          ];
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.primitive-simd
              hsPkgs.criterion
              hsPkgs.vector
              hsPkgs.deepseq
              hsPkgs.random
            ];
          };
        };
      };
    }