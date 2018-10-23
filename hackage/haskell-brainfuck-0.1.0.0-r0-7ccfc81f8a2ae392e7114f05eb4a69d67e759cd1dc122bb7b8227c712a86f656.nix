{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-brainfuck";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Sebastian Galkin";
      maintainer = "Sebastian Galkin <paraseba@gmail.com>";
      author = "Sebastian Galkin <paraseba@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "BrainFuck interpreter";
      description = "BrainFuck language interpreter.\nProvides a library for evaluation and an executable to evaluate\nbrainfuck files. Evaluation happens under an arbitrary monad so\nprogramn can be evaluated doing I/O to stdin/stdout or in memory\nusing the State monad.";
      buildType = "Simple";
    };
    components = {
      "haskell-brainfuck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "brainfuck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.haskell-brainfuck)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-brainfuck)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }