{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      llvm-cpu = true;
      llvm-ptx = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "accelerate-bignum";
        version = "0.2.0.0";
      };
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
      "accelerate-bignum" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.accelerate)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optionals (flags.llvm-cpu) [
          (hsPkgs.accelerate-llvm)
          (hsPkgs.accelerate-llvm-native)
          (hsPkgs.llvm-hs-pure)
        ]) ++ pkgs.lib.optionals (flags.llvm-ptx) [
          (hsPkgs.accelerate-llvm)
          (hsPkgs.accelerate-llvm-ptx)
          (hsPkgs.llvm-hs-pure)
        ];
      };
      tests = {
        "test-llvm-native" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-bignum)
            (hsPkgs.accelerate-llvm-native)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
          ];
        };
        "test-llvm-ptx" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-bignum)
            (hsPkgs.accelerate-llvm-ptx)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
          ];
        };
      };
      benchmarks = {
        "accelerate-bignum-bench" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-bignum)
            (hsPkgs.accelerate-io)
            (hsPkgs.criterion)
            (hsPkgs.mwc-random)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.wide-word)
          ] ++ pkgs.lib.optional (flags.llvm-cpu) (hsPkgs.accelerate-llvm-native)) ++ pkgs.lib.optional (flags.llvm-ptx) (hsPkgs.accelerate-llvm-ptx);
        };
      };
    };
  }