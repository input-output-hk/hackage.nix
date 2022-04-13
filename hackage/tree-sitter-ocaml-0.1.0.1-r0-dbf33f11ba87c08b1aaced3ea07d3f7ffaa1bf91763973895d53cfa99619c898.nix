{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "tree-sitter-ocaml"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 GitHub, Anton Kochkov";
      maintainer = "rewinfrey@github.com";
      author = "";
      homepage = "https://github.com/tree-sitter/haskell-tree-sitter/tree/master/tree-sitter-ocaml";
      url = "";
      synopsis = "Tree-sitter grammar/parser for OCaml";
      description = "This package provides a parser for OCaml suitable for use with the tree-sitter package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
          ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
        };
      };
    }