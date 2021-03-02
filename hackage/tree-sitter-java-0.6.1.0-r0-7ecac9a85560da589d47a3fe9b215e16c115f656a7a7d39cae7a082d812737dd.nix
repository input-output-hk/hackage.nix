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
      identifier = { name = "tree-sitter-java"; version = "0.6.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 GitHub";
      maintainer = "tclem@github.com";
      author = "Ayman Nadeem, Max Brunsfeld, Tim Clem, Rob Rix, Josh Vera, Rick Winfrey";
      homepage = "https://github.com/tree-sitter/haskell-tree-sitter/tree/master/tree-sitter-java";
      url = "";
      synopsis = "Tree-sitter grammar/parser for Java";
      description = "This package provides a parser for Java suitable for use with the tree-sitter package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semantic-source" or (errorHandler.buildDepError "semantic-source"))
          (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."tree-sitter-java".components.sublibs.tree-sitter-java-internal or (errorHandler.buildDepError "tree-sitter-java:tree-sitter-java-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "tree-sitter-java-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
            ];
          libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
            (hsPkgs."tree-sitter-java" or (errorHandler.buildDepError "tree-sitter-java"))
            (hsPkgs."tree-sitter-test-helpers" or (errorHandler.buildDepError "tree-sitter-test-helpers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }