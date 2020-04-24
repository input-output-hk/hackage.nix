{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "latex-formulae-pandoc"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "http://github.com/liamoc/latex-formulae#readme";
      url = "";
      synopsis = "Render LaTeX formulae in pandoc documents to images with an actual LaTeX installation";
      description = "This library provides utility functions to convert LaTeX equations to images in Pandoc documents using the @latex-formulae-image@ package.\nIt requires an actual LaTeX installation to work (@latex@,@dvips@), along with ImageMagick's @convert@ (which needs to understand PostScript)\n\nAn executable is also provided which can be used as a Pandoc filter from the commandline, which allows this technique to be used\neven for standalone Pandoc jobs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
          (hsPkgs."latex-formulae-image" or ((hsPkgs.pkgs-errors).buildDepError "latex-formulae-image"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "latex-formulae-filter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."latex-formulae-pandoc" or ((hsPkgs.pkgs-errors).buildDepError "latex-formulae-pandoc"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."latex-formulae-image" or ((hsPkgs.pkgs-errors).buildDepError "latex-formulae-image"))
            ];
          buildable = true;
          };
        };
      };
    }