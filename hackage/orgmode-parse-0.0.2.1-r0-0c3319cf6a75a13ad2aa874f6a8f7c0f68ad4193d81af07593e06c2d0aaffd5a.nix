{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "orgmode-parse"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Parnell Springmeyer <parnell@digitalmentat.com>";
      author = "Parnell Springmeyer <parnell@digitalmentat.com>";
      homepage = "";
      url = "";
      synopsis = "A parser and writer for org-mode flavored documents.";
      description = "<<https://travis-ci.org/digitalmentat/orgmode-parse.svg?branch=master>>\n\n`orgmode-parse` is a parsing and writing library for the org-mode flavor\nof document markup.\n\nThis library parses the human-readable and textual representation\ninto an AST that can be used for output to another format (HTML?\nMarkdown?), serialized for storage, etc...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."thyme" or ((hsPkgs.pkgs-errors).buildDepError "thyme"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."thyme" or ((hsPkgs.pkgs-errors).buildDepError "thyme"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }