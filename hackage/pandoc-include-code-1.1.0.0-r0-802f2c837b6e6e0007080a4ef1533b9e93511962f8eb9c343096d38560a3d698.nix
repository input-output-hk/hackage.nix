{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pandoc-include-code"; version = "1.1.0.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "Oskar Wickström";
      author = "Oskar Wickström";
      homepage = "https://github.com/owickstrom/pandoc-include-code";
      url = "";
      synopsis = "A Pandoc filter for including code from source files";
      description = "A Pandoc filter for including code from source files.\nIt lets you keep your examples and documentation compiled and in sync,\ninclude small snippets from larger source files, and use Markdown or LaTeX\ntogether with preformatted HTML-like sources, in Pandoc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
          ];
        buildable = true;
        };
      exes = {
        "pandoc-include-code" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."pandoc-include-code" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-include-code"))
            ];
          buildable = true;
          };
        };
      tests = {
        "filter-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."pandoc-include-code" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-include-code"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }