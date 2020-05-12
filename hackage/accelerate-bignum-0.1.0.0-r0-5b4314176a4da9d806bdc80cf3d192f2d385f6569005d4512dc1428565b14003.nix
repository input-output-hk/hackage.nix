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
      identifier = { name = "accelerate-bignum"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "https://github.com/tmcdonell/accelerate-bignum";
      url = "";
      synopsis = "Fixed-length large integer arithmetic for Accelerate";
      description = "This package provides fixed-length large integer types and arithmetic\noperations for Accelerate. Signed and unsigned 96, 128, 160, 192, 224, 256,\nand 512-bit types are predefined.\n\nRefer to the main /Accelerate/ package for more information:\n<http://hackage.haskell.org/package/accelerate>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          ] ++ (pkgs.lib).optionals (flags.llvm-cpu) [
          (hsPkgs."accelerate-llvm" or (errorHandler.buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))
          (hsPkgs."llvm-hs-pure" or (errorHandler.buildDepError "llvm-hs-pure"))
          ]) ++ (pkgs.lib).optionals (flags.llvm-ptx) [
          (hsPkgs."accelerate-llvm" or (errorHandler.buildDepError "accelerate-llvm"))
          (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"))
          (hsPkgs."llvm-hs-pure" or (errorHandler.buildDepError "llvm-hs-pure"))
          ];
        buildable = true;
        };
      tests = {
        "accelerate-bignum-test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-bignum" or (errorHandler.buildDepError "accelerate-bignum"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ] ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"));
          buildable = true;
          };
        };
      benchmarks = {
        "accelerate-bignum-bench" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-bignum" or (errorHandler.buildDepError "accelerate-bignum"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
            (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
            ] ++ (pkgs.lib).optional (flags.llvm-cpu) (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))) ++ (pkgs.lib).optional (flags.llvm-ptx) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"));
          buildable = true;
          };
        };
      };
    }