{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pandoc-emphasize-code"; version = "0.2.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "Oskar Wickström";
      author = "Oskar Wickström";
      homepage = "https://github.com/owickstrom/pandoc-emphasize-code";
      url = "";
      synopsis = "A Pandoc filter for emphasizing code in fenced blocks";
      description = "A Pandoc filter for emphasizing sections of code in fenced blocks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          ];
        buildable = true;
        };
      exes = {
        "pandoc-emphasize-code" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."pandoc-emphasize-code" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-emphasize-code"))
            ];
          buildable = true;
          };
        };
      tests = {
        "filter-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."pandoc-emphasize-code" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-emphasize-code"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            (hsPkgs."tasty-discover" or ((hsPkgs.pkgs-errors).buildDepError "tasty-discover"))
            ];
          buildable = true;
          };
        };
      };
    }