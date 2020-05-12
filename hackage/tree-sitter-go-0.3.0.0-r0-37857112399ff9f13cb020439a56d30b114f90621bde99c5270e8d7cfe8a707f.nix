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
      identifier = { name = "tree-sitter-go"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 GitHub";
      maintainer = "tclem@github.com";
      author = "Max Brunsfeld, Tim Clem, Rob Rix, Josh Vera, Rick Winfrey, Ayman Nadeem, Patrick Thomson";
      homepage = "https://github.com/tree-sitter/haskell-tree-sitter/tree/master/tree-sitter-go";
      url = "";
      synopsis = "Tree-sitter grammar/parser for Go";
      description = "This package provides a parser for Go suitable for use with the tree-sitter package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."tree-sitter-go-internal" or (errorHandler.buildDepError "tree-sitter-go-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "tree-sitter-go-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
            ];
          buildable = true;
          };
        };
      };
    }