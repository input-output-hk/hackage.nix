{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "puzzle-draw"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "rfvollmert@gmail.com";
      author = "Robert Vollmert";
      homepage = "";
      url = "";
      synopsis = "Creating graphics for pencil puzzles.";
      description = "puzzle-draw is a library for drawing pencil puzzles\nusing Diagrams. It aims to provide a utility layer\non top of Diagrams to help with drawing arbitrary\npuzzles, as well as supporting several specific\npuzzle types directly. In addition, it includes\nfunctionality for parsing puzzle data from a\nYAML file format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."SVGFonts" or ((hsPkgs.pkgs-errors).buildDepError "SVGFonts"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."blaze-svg" or ((hsPkgs.pkgs-errors).buildDepError "blaze-svg"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-svg" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-svg"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."puzzle-draw" or ((hsPkgs.pkgs-errors).buildDepError "puzzle-draw"))
            ];
          buildable = true;
          };
        };
      };
    }