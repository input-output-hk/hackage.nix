{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          ] ++ (pkgs.lib).optionals (flags.llvm-cpu) [
          (hsPkgs."accelerate-llvm" or (errorHandler.buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))
          (hsPkgs."blas-hs" or (errorHandler.buildDepError "blas-hs"))
          (hsPkgs."llvm-hs-pure" or (errorHandler.buildDepError "llvm-hs-pure"))
          ]) ++ (pkgs.lib).optionals (flags.llvm-ptx) [
          (hsPkgs."accelerate-llvm" or (errorHandler.buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cublas" or (errorHandler.buildDepError "cublas"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."llvm-hs-pure" or (errorHandler.buildDepError "llvm-hs-pure"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "test-llvm-native" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-blas" or (errorHandler.buildDepError "accelerate-blas"))
            (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            ];
          buildable = if !flags.llvm-cpu then false else true;
          };
        "test-llvm-ptx" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-blas" or (errorHandler.buildDepError "accelerate-blas"))
            (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            ];
          buildable = if !flags.llvm-ptx then false else true;
          };
        };
      benchmarks = {
        "bench-hmatrix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            ];
          buildable = if !flags.llvm-cpu && !flags.llvm-ptx
            then false
            else true;
          };
        "bench-llvm-native" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-blas" or (errorHandler.buildDepError "accelerate-blas"))
            (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."mwc-random-accelerate" or (errorHandler.buildDepError "mwc-random-accelerate"))
            ];
          buildable = if !flags.llvm-cpu then false else true;
          };
        "bench-llvm-ptx" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-blas" or (errorHandler.buildDepError "accelerate-blas"))
            (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."mwc-random-accelerate" or (errorHandler.buildDepError "mwc-random-accelerate"))
            ];
          buildable = if !flags.llvm-ptx then false else true;
          };
        };
      };
    }