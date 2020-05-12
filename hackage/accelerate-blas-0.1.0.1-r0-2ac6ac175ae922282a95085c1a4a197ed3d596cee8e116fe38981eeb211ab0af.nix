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
      identifier = { name = "accelerate-blas"; version = "0.1.0.1"; };
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
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
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
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          ];
        buildable = true;
        };
      tests = {
        "accelerate-blas-test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-blas" or (errorHandler.buildDepError "accelerate-blas"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ] ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"));
          buildable = true;
          };
        };
      benchmarks = {
        "accelerate-blas-bench" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-blas" or (errorHandler.buildDepError "accelerate-blas"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."mwc-random-accelerate" or (errorHandler.buildDepError "mwc-random-accelerate"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            ] ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"));
          buildable = true;
          };
        };
      };
    }