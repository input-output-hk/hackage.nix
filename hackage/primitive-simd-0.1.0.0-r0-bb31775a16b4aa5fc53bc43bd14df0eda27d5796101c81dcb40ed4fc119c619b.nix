{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { no-vec = false; vec256 = false; vec512 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "primitive-simd"; version = "0.1.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."primitive-simd" or ((hsPkgs.pkgs-errors).buildDepError "primitive-simd"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }