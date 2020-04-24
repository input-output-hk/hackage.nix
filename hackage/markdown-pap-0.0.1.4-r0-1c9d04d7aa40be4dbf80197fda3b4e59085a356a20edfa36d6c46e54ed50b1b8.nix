{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "markdown-pap"; version = "0.0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "markdown parser with papillon";
      description = "Now. Implemented only following features.\n\nParagraph, header, code, list, image\n\nNot yet implemented following features.\n\nnewline, bold, quote, link, horizontal line";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."papillon" or ((hsPkgs.pkgs-errors).buildDepError "papillon"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          ];
        buildable = true;
        };
      };
    }