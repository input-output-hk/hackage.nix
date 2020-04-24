{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "tree-sitter-ruby"; version = "0.4.1.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."semantic-source" or ((hsPkgs.pkgs-errors).buildDepError "semantic-source"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."tree-sitter" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter"))
          (hsPkgs."tree-sitter-ruby-internal" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter-ruby-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "tree-sitter-ruby-internal" = {
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
      exes = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."tree-sitter" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter"))
            (hsPkgs."tree-sitter-ruby" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter-ruby"))
            ];
          buildable = true;
          };
        "tree-sitter-ruby" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tree-sitter" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter"))
            (hsPkgs."tree-sitter-ruby" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter-ruby"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tree-sitter" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter"))
            (hsPkgs."tree-sitter-ruby" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter-ruby"))
            (hsPkgs."tree-sitter-test-helpers" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter-test-helpers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }