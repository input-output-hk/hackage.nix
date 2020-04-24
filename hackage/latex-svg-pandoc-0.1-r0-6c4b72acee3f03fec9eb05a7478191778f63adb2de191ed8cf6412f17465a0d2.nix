{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "latex-svg-pandoc"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Oleg Grenrus, 2015-2019 Liam O'Connor";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus, Liam O'Connor";
      homepage = "http://github.com/phadej/latex-svg#readme";
      url = "";
      synopsis = "Render LaTeX formulae in pandoc documents to images with an actual LaTeX";
      description = "This library provides utility functions to convert LaTeX equations to images\nin Pandoc documents using the @latex-svg-image@ package.  It requires an\nactual LaTeX installation to work (@latex@, @dvisvgm@).\n\nAn executable is also provided which can be used as a Pandoc filter from the\ncommandline, which allows this technique to be used even for standalone Pandoc\njobs.\n\nThis is a fork of https://github.com/liamoc/latex-formulae";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."latex-svg-image" or ((hsPkgs.pkgs-errors).buildDepError "latex-svg-image"))
          (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "latex-svg-filter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."latex-svg-image" or ((hsPkgs.pkgs-errors).buildDepError "latex-svg-image"))
            (hsPkgs."latex-svg-pandoc" or ((hsPkgs.pkgs-errors).buildDepError "latex-svg-pandoc"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            ];
          buildable = true;
          };
        };
      };
    }