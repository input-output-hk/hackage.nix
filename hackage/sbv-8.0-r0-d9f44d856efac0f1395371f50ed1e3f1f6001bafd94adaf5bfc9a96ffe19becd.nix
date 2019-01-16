{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "sbv"; version = "8.0"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2010-2019";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://leventerkok.github.com/sbv/";
      url = "";
      synopsis = "SMT Based Verification: Symbolic Haskell theorem prover using SMT solving.";
      description = "Express properties about Haskell programs and automatically prove them using SMT\n(Satisfiability Modulo Theories) solvers.\n\nFor details, please see: <http://leventerkok.github.com/sbv/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.crackNum)
          (hsPkgs.ghc)
          (hsPkgs.QuickCheck)
          (hsPkgs.template-haskell)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.syb)
          (hsPkgs.transformers)
          (hsPkgs.generic-deriving)
          ];
        };
      tests = {
        "SBVTest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.syb)
            (hsPkgs.crackNum)
            (hsPkgs.sbv)
            (hsPkgs.directory)
            (hsPkgs.random)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.template-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            ];
          };
        "SBVDocTest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.sbv)
            ];
          };
        "SBVHLint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.hlint)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.sbv)
            ];
          };
        };
      };
    }