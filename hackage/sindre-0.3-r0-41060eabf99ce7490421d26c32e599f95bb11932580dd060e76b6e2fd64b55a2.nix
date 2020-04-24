{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sindre"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "http://sigkill.dk/programs/sindre";
      url = "";
      synopsis = "A programming language for simple GUIs";
      description = "Sindre is a language inspired by Awk, meant for creating very simple\ngraphical user interfaces.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."X11-xshape" or ((hsPkgs.pkgs-errors).buildDepError "X11-xshape"))
          (hsPkgs."X11-rm" or ((hsPkgs.pkgs-errors).buildDepError "X11-rm"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."x11-xim" or ((hsPkgs.pkgs-errors).buildDepError "x11-xim"))
          (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
          (hsPkgs."regex-pcre" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."permute" or ((hsPkgs.pkgs-errors).buildDepError "permute"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        pkgconfig = [
          (pkgconfPkgs."xft" or ((hsPkgs.pkgs-errors).pkgConfDepError "xft"))
          ];
        buildable = true;
        };
      exes = {
        "sindre" = {
          depends = [
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."X11-xshape" or ((hsPkgs.pkgs-errors).buildDepError "X11-xshape"))
            (hsPkgs."X11-rm" or ((hsPkgs.pkgs-errors).buildDepError "X11-rm"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."x11-xim" or ((hsPkgs.pkgs-errors).buildDepError "x11-xim"))
            (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
            (hsPkgs."regex-pcre" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."permute" or ((hsPkgs.pkgs-errors).buildDepError "permute"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          pkgconfig = [
            (pkgconfPkgs."xft" or ((hsPkgs.pkgs-errors).pkgConfDepError "xft"))
            ];
          buildable = true;
          };
        };
      };
    }