{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { include = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "liquidhaskell";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2010-15 Ranjit Jhala, University of California, San Diego.";
      maintainer = "Ranjit Jhala <jhala@cs.ucsd.edu>";
      author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
      homepage = "http://goto.ucsd.edu/liquidhaskell";
      url = "";
      synopsis = "Liquid Types for Haskell";
      description = "Liquid Types for Haskell.";
      buildType = "Simple";
    };
    components = {
      "liquidhaskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ansi-terminal)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.array)
          (hsPkgs.hpc)
          (hsPkgs.bifunctors)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.cpphs)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.Diff)
          (hsPkgs.filemanip)
          (hsPkgs.filepath)
          (hsPkgs.ghc-paths)
          (hsPkgs.hscolour)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.intern)
          (hsPkgs.vector)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.liquid-fixpoint)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.fingertree)
          (hsPkgs.Cabal)
        ];
      };
      exes = {
        "liquid" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ansi-terminal)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
            (hsPkgs.array)
            (hsPkgs.hpc)
            (hsPkgs.bifunctors)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.cpphs)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.Diff)
            (hsPkgs.filemanip)
            (hsPkgs.filepath)
            (hsPkgs.ghc-paths)
            (hsPkgs.hscolour)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.syb)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.liquid-fixpoint)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.fingertree)
            (hsPkgs.liquidhaskell)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.liquidhaskell)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.optparse-applicative)
            (hsPkgs.stm)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-rerun)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }