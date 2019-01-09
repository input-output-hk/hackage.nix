{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-tools-ast"; version = "1.0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/nboldi/haskell-tools";
      url = "";
      synopsis = "Haskell AST for efficient tooling";
      description = "A representation of a Haskell Syntax tree that contain source-related and semantic annotations. These annotations help developer tools to work with the defined program. The source information enables refactoring and program transformation tools to change the source code without losing the original format (layout, comments) of the source. Semantic information helps analyzing the program. The representation is different from the GHC's syntax tree. It contains information from all representations in GHC (different version of syntax trees, lexical and module-level information). The module is split up to put the representation of different language elements into different modules. Additionally, it contains the representation of semantic and source annotations, helper functions and generated instances for the representation of language elements. Because langauge elements may refer each other (there can be a pattern inside an expression in case of a pattern match and an expression inside a pattern if view patterns are enabled), we use hs-boot files to break up dependency cycles.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.references)
          (hsPkgs.uniplate)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          ];
        };
      };
    }