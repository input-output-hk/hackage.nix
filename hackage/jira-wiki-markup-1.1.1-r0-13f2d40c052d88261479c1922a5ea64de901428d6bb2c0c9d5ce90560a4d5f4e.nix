{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "jira-wiki-markup"; version = "1.1.1"; };
      license = "MIT";
      copyright = "© 2019–2020 Albert Krewinkel";
      maintainer = "tarleb@zeitkraut.de";
      author = "Albert Krewinkel";
      homepage = "https://github.com/tarleb/jira-wiki-markup";
      url = "";
      synopsis = "Handle Jira wiki markup";
      description = "Parse jira wiki text into an abstract syntax tree for easy\ntransformation to other formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "jira-wiki-markup" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."jira-wiki-markup" or ((hsPkgs.pkgs-errors).buildDepError "jira-wiki-markup"))
            ];
          buildable = true;
          };
        };
      tests = {
        "jira-wiki-markup-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."jira-wiki-markup" or ((hsPkgs.pkgs-errors).buildDepError "jira-wiki-markup"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }