{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "latex-formulae-image"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "http://github.com/liamoc/latex-formulae#readme";
      url = "";
      synopsis = "A library for rendering LaTeX formulae as images using an actual LaTeX installation";
      description = "This library provides the basic infrastructure necessary to convert LaTeX formulae into images, using a real\nLaTeX installation. This is useful in particular for showing formulae on websites, where using alternatives\nlike MathJax is not an option (e.g, when you want to use various LaTeX packages that MathJax doesn't support).\n\nThis library requires @latex@, @dvips@ and ImageMagick's @convert@ to be present in the system. @convert@\nneeds to understand PostScript files.\n\nWe also\nuse a few tricks to compute where the baseline is in the image, so these images can be effectively typeset inline\nwith other text.\n\nThe companion library to this, @latex-formulae-pandoc@, provides useful tools to integrate this library with pandoc,\nwhen generating HTML documents.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ] ++ (if flags.old-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      };
    }