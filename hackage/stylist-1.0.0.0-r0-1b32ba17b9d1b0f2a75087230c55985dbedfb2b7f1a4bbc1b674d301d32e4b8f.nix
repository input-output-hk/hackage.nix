{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stylist"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Adrian Cochrane copyright 2019";
      maintainer = "alcinnz@lavabit.com";
      author = "Adrian Cochrane";
      homepage = "";
      url = "";
      synopsis = "Apply CSS styles to a document tree.";
      description = "Reusable CSS engine allowing you to parse CSS stylesheets and to query the style properties for a given element.\nIt covers CSS parsing, selection, cascade, and inheritance, whilst allowing you to declaratively define supported properties and at-rules.\nThe hope is that this would be useful for implementing new browser engines, web development tools, and UI frameworks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."css-syntax" or ((hsPkgs.pkgs-errors).buildDepError "css-syntax"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          ];
        buildable = true;
        };
      tests = {
        "test-stylist" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."css-syntax" or ((hsPkgs.pkgs-errors).buildDepError "css-syntax"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }