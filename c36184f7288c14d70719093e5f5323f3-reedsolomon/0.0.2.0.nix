{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      simd = true;
      llvm = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "reedsolomon";
        version = "0.0.2.0";
      };
      license = "MIT";
      copyright = "(c) 2015, Nicolas Trangez\n(c) 2015, Klaus Post\n(c) 2015, Backblaze";
      maintainer = "ikke@nicolast.be";
      author = "Nicolas Trangez";
      homepage = "http://github.com/NicolasT/reedsolomon";
      url = "";
      synopsis = "Reed-Solomon Erasure Coding in Haskell";
      description = "Please see README.md";
      buildType = "Custom";
    };
    components = {
      "reedsolomon" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.loop)
          (hsPkgs.primitive)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
          (hsPkgs.bytestring)
          (hsPkgs.profunctors)
          (hsPkgs.gitrev)
        ];
        libs = pkgs.lib.optional (_flags.simd) (pkgs.reedsolomon);
      };
      exes = {
        "reedsolomon-simple-encoder" = {
          depends  = pkgs.lib.optionals (!system.isWindows) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.bytestring-mmap)
            (hsPkgs.reedsolomon)
          ];
        };
        "reedsolomon-simple-decoder" = {
          depends  = pkgs.lib.optionals (!system.isWindows) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.bytestring-mmap)
            (hsPkgs.reedsolomon)
          ];
        };
        "reedsolomon-simple-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.random)
            (hsPkgs.criterion)
            (hsPkgs.statistics)
            (hsPkgs.reedsolomon)
          ];
        };
        "reedsolomon-profiling" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.optparse-applicative)
            (hsPkgs.clock)
            (hsPkgs.reedsolomon)
          ];
        };
      };
      tests = {
        "reedsolomon-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.loop)
            (hsPkgs.primitive)
            (hsPkgs.mtl)
            (hsPkgs.exceptions)
            (hsPkgs.bytestring)
            (hsPkgs.profunctors)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-ant-xml)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.reedsolomon)
          ];
        };
      };
      benchmarks = {
        "reedsolomon-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.vector)
            (hsPkgs.loop)
            (hsPkgs.primitive)
            (hsPkgs.exceptions)
            (hsPkgs.criterion)
            (hsPkgs.reedsolomon)
          ];
        };
      };
    };
  }