{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "latex-svg-image"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Oleg Grenrus, 2015-2019 Liam O'Connor";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus, Liam O'Connor";
      homepage = "http://github.com/phadej/latex-svg#readme";
      url = "";
      synopsis = "A library for rendering LaTeX formulae as SVG using an actual LaTeX";
      description = "This library provides the basic infrastructure necessary to convert LaTeX\nformulae into SVG images, using a real LaTeX installation. This is useful in\nparticular for showing formulae on websites, where using alternatives like\nMathJax is not an option (e.g, when you want to use various LaTeX packages that\nMathJax doesn't support).\n\nThis library requires @latex@, @dvisvgm@ to be present in the system.\n\nThe companion library to this, @latex-svg-pandoc@, provides useful tools to\nintegrate this library with pandoc, when generating HTML documents.\n\nThis is a fork of https://github.com/liamoc/latex-formulae";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cryptohash-sha256" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha256"))
          ];
        buildable = true;
        };
      };
    }