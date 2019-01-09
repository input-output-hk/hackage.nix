{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dump = false; profile = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hbf"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "Sebastian Galkin, 2018";
      maintainer = "paraseba@gmail.com";
      author = "Sebastian Galkin";
      homepage = "https://github.com/paraseba/hbf";
      url = "";
      synopsis = "An optimizing Brainfuck compiler and evaluator";
      description = "hbf is a compiler and executor of Brainfuck programs. It provides two executables: @hbfc@ the Brainfuck compiler, and @hbf@ the virtual machine that executes compiled Brainfuck programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "hbf" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.hbf)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.primitive)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        "hbfc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.hbf)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.primitive)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.hbf)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.primitive)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        "test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.hbf)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-checkers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.primitive)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "evalbench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.hbf)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.primitive)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }