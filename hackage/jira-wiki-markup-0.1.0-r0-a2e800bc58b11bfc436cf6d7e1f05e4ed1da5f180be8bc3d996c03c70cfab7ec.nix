{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "jira-wiki-markup"; version = "0.1.0"; };
      license = "MIT";
      copyright = "© 2019 Albert Krewinkel";
      maintainer = "tarleb@zeitkraut.de";
      author = "Albert Krewinkel";
      homepage = "https://github.com/tarleb/jira-wiki-markup";
      url = "";
      synopsis = "Handle Jira wiki markup";
      description = "Handle Jira wiki markup";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
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