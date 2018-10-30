{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-tools-refactor";
        version = "0.9.0.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.uniplate)
          (hsPkgs.ghc-paths)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.references)
          (hsPkgs.split)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.ghc)
          (hsPkgs.Cabal)
          (hsPkgs.haskell-tools-ast)
          (hsPkgs.haskell-tools-backend-ghc)
          (hsPkgs.haskell-tools-rewrite)
          (hsPkgs.haskell-tools-prettyprint)
        ];
      };
    };
  }