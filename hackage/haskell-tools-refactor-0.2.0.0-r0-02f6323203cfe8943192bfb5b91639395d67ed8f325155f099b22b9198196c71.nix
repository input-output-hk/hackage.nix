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
        name = "haskell-tools-refactor";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Refactoring Tool for Haskell";
      description = "Contains a set of refactorings based on the Haskell-Tools framework to easily transform a Haskell program. For the descriptions of the implemented refactorings, see the homepage.";
      buildType = "Simple";
    };
    components = {
      "haskell-tools-refactor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.mtl)
          (hsPkgs.uniplate)
          (hsPkgs.ghc-paths)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.references)
          (hsPkgs.split)
          (hsPkgs.filepath)
          (hsPkgs.haskell-tools-ast)
          (hsPkgs.haskell-tools-ast-fromghc)
          (hsPkgs.haskell-tools-ast-gen)
          (hsPkgs.haskell-tools-ast-trf)
          (hsPkgs.haskell-tools-prettyprint)
          (hsPkgs.template-haskell)
          (hsPkgs.Cabal)
        ];
      };
      tests = {
        "haskell-tools-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.transformers)
            (hsPkgs.either)
            (hsPkgs.filepath)
            (hsPkgs.haskell-tools-ast)
            (hsPkgs.haskell-tools-ast-fromghc)
            (hsPkgs.haskell-tools-ast-gen)
            (hsPkgs.haskell-tools-ast-trf)
            (hsPkgs.haskell-tools-prettyprint)
            (hsPkgs.haskell-tools-refactor)
            (hsPkgs.mtl)
            (hsPkgs.uniplate)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.references)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.template-haskell)
            (hsPkgs.Cabal)
            (hsPkgs.polyparse)
          ];
        };
      };
    };
  }