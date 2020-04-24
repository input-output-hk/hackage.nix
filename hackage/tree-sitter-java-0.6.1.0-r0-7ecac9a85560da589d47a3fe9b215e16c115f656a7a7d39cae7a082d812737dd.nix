{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."semantic-source" or ((hsPkgs.pkgs-errors).buildDepError "semantic-source"))
          (hsPkgs."tree-sitter" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."tree-sitter-java-internal" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter-java-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "tree-sitter-java-internal" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tree-sitter" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter"))
            ];
          libs = [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tree-sitter" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter"))
            (hsPkgs."tree-sitter-java" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter-java"))
            (hsPkgs."tree-sitter-test-helpers" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter-test-helpers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }