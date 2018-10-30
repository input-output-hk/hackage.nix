{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "liquidhaskell";
        version = "0.6.0.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.array)
          (hsPkgs.hpc)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.cpphs)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.Diff)
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
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.liquid-fixpoint)
          (hsPkgs.located-base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.fingertree)
          (hsPkgs.Cabal)
          (hsPkgs.bifunctors)
          (hsPkgs.cereal)
          (hsPkgs.temporary)
        ];
      };
      exes = {
        "liquid" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.cmdargs)
            (hsPkgs.deepseq)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.liquid-fixpoint)
            (hsPkgs.located-base)
            (hsPkgs.liquidhaskell)
          ];
        };
        "lhi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.cmdargs)
            (hsPkgs.deepseq)
            (hsPkgs.pretty)
            (hsPkgs.liquid-fixpoint)
            (hsPkgs.located-base)
            (hsPkgs.liquidhaskell)
            (hsPkgs.network)
            (hsPkgs.directory)
            (hsPkgs.unix)
            (hsPkgs.daemons)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.unordered-containers)
            (hsPkgs.cereal)
            (hsPkgs.process)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.optparse-applicative)
            (hsPkgs.stm)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-ant-xml)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-rerun)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }