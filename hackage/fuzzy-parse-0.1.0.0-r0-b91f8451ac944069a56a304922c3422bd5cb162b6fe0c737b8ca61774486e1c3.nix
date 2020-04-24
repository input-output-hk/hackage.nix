{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "fuzzy-parse"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "dzuikov@gmail.com";
      author = "Dmitry Zuikov";
      homepage = "https://github.com/hexresearch/fuzzy-parse";
      url = "";
      synopsis = "Tools for processing unstructured text data";
      description = "The lightweight and easy to use functions for text tokenizing and parsing.  It aimed for\nparsing mostly unstructured data, but the structured formats may be parsed as well.\nIt may be used in different sutiations, for DSL, tex markups or even for parsing simple\ngrammars easier and sometimes faster than in case of usage mainstream parsing combinators\nor parser generators.\nSee the README.md, examples and modules documentation for more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "fuzzy-parse-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-discover" or ((hsPkgs.pkgs-errors).buildDepError "hspec-discover"))
            (hsPkgs."fuzzy-parse" or ((hsPkgs.pkgs-errors).buildDepError "fuzzy-parse"))
            (hsPkgs."interpolatedstring-perl6" or ((hsPkgs.pkgs-errors).buildDepError "interpolatedstring-perl6"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }