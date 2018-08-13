{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-tools-ast";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/nboldi/haskell-tools";
      url = "";
      synopsis = "Haskell AST for efficient tooling";
      description = "A representation of a Haskell Syntax tree that contain source-related and semantic annotations. These annotations help developer tools to work with the defined program. The source information enables refactoring and program transformation tools to change the source code without losing the original format (layout, comments) of the source. Semantic information helps analyzing the program. The representation is different from the GHC's syntax tree. It contains information from all representations in GHC (different version of syntax trees, lexical and module-level information).";
      buildType = "Simple";
    };
    components = {
      "haskell-tools-ast" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.references)
          (hsPkgs.uniplate)
          (hsPkgs.structural-traversal)
        ];
      };
    };
  }