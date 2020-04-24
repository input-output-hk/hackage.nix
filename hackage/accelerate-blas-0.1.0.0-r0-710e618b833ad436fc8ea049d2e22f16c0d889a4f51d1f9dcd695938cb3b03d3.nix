{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm-cpu = true; llvm-ptx = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "accelerate-blas"; version = "0.1.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          ] ++ (pkgs.lib).optionals (flags.llvm-cpu) [
          (hsPkgs."accelerate-llvm" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-native" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-native"))
          (hsPkgs."blas-hs" or ((hsPkgs.pkgs-errors).buildDepError "blas-hs"))
          (hsPkgs."llvm-hs-pure" or ((hsPkgs.pkgs-errors).buildDepError "llvm-hs-pure"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          ]) ++ (pkgs.lib).optionals (flags.llvm-ptx) [
          (hsPkgs."accelerate-llvm" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-ptx" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-ptx"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cublas" or ((hsPkgs.pkgs-errors).buildDepError "cublas"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          (hsPkgs."llvm-hs-pure" or ((hsPkgs.pkgs-errors).buildDepError "llvm-hs-pure"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          ];
        buildable = true;
        };
      tests = {
        "accelerate-blas-test" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-blas" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-blas"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            ] ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-ptx"));
          buildable = true;
          };
        };
      benchmarks = {
        "accelerate-blas-bench" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."accelerate-blas" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-blas"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."mwc-random-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random-accelerate"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            ] ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-ptx"));
          buildable = true;
          };
        };
      };
    }