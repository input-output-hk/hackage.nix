{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "markdown2svg"; version = "0.0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "markdown to svg converter";
      description = "Usage: markdown2svg foo.md\n\nNow. Implemented only following features.\n\nparagraph, header, code, list\n\nNot yet implemented following features.\n\nnewline, bold, quote, link, horizontal line";
      buildType = "Simple";
      };
    components = {
      exes = {
        "markdown2svg" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yjsvg" or ((hsPkgs.pkgs-errors).buildDepError "yjsvg"))
            (hsPkgs."papillon" or ((hsPkgs.pkgs-errors).buildDepError "papillon"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
            (hsPkgs."markdown-pap" or ((hsPkgs.pkgs-errors).buildDepError "markdown-pap"))
            ];
          buildable = true;
          };
        };
      };
    }