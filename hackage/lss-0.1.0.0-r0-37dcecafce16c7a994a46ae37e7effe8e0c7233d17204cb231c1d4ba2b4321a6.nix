{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lss"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "https://github.com/dbp/lss";
      url = "";
      synopsis = "Lexical Style Sheets - a language for writing styles that is focused around lexical (ie, static) scoping and re-use of large components.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."language-css" or ((hsPkgs.pkgs-errors).buildDepError "language-css"))
          (hsPkgs."language-css-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "language-css-attoparsec"))
          (hsPkgs."xmlhtml" or ((hsPkgs.pkgs-errors).buildDepError "xmlhtml"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      tests = {
        "test-lss" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."language-css" or ((hsPkgs.pkgs-errors).buildDepError "language-css"))
            (hsPkgs."language-css-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "language-css-attoparsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hspec2" or ((hsPkgs.pkgs-errors).buildDepError "hspec2"))
            (hsPkgs."lss" or ((hsPkgs.pkgs-errors).buildDepError "lss"))
            ];
          buildable = true;
          };
        };
      };
    }