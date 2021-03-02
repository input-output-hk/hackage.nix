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
      specVersion = "2.2";
      identifier = { name = "tree-sitter-typescript"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 GitHub";
      maintainer = "vera@github.com";
      author = "Max Brunsfeld, Tim Clem, Rob Rix, Josh Vera, Rick Winfrey, Ayman Nadeem, Patrick Thomson";
      homepage = "https://github.com/tree-sitter/tree-sitter-typescript#readme";
      url = "";
      synopsis = "Tree-sitter grammar/parser for TypeScript";
      description = "This package provides a parser for TypeScript suitable for use with the tree-sitter package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."tree-sitter-typescript".components.sublibs.tree-sitter-typescript-internal or (errorHandler.buildDepError "tree-sitter-typescript:tree-sitter-typescript-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "tree-sitter-typescript-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
            ];
          buildable = true;
          };
        };
      };
    }