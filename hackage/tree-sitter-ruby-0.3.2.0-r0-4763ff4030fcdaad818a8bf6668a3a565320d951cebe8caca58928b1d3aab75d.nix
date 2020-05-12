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
      identifier = { name = "tree-sitter-ruby"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 GitHub";
      maintainer = "tclem@github.com";
      author = "Max Brunsfeld, Tim Clem, Rob Rix, Josh Vera, Rick Winfrey, Ayman Nadeem, Patrick Thomson";
      homepage = "https://github.com/tree-sitter/haskell-tree-sitter/tree/master/tree-sitter-ruby";
      url = "";
      synopsis = "Tree-sitter grammar/parser for Ruby";
      description = "This package provides a parser for Ruby suitable for use with the tree-sitter package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semantic-source" or (errorHandler.buildDepError "semantic-source"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
          (hsPkgs."tree-sitter-ruby-internal" or (errorHandler.buildDepError "tree-sitter-ruby-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "tree-sitter-ruby-internal" = {
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
            (hsPkgs."tree-sitter-ruby" or (errorHandler.buildDepError "tree-sitter-ruby"))
            (hsPkgs."tree-sitter-test-helpers" or (errorHandler.buildDepError "tree-sitter-test-helpers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }