{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "astview"; version = "0.1.4"; };
      license = "BSD-4-Clause";
      copyright = "";
      maintainer = "Sebastian Menge <sebastian.menge@udo.edu>";
      author = "Pascal Hof <pascal.hof@udo.edu>,\nSebastian Menge <sebastian.menge@udo.edu>";
      homepage = "";
      url = "";
      synopsis = "A GTK-based abstract syntax tree viewer for custom\nlanguages and parsers";
      description = "Astview is a graphical viewer for abstract\nsyntax trees. It is implemented on the basis\nof scrap-your-boilerplate (i.e. data2tree)\nand works with all parsers that generate trees\nthat are instances of the Data.Data class.\nCustom parsers can be dynamically loaded\n(via package hint) at startup.\n\nFor installation you need gtk2hs and hscolour before.\nThe latter will not be automatically installed by\ncabal since it is used by Setup.hs.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "astview" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."gtksourceview2" or ((hsPkgs.pkgs-errors).buildDepError "gtksourceview2"))
            (hsPkgs."astview-utils" or ((hsPkgs.pkgs-errors).buildDepError "astview-utils"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }