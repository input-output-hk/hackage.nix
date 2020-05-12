{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "astview"; version = "0.1"; };
      license = "BSD-4-Clause";
      copyright = "";
      maintainer = "Sebastian Menge <sebastian.menge@udo.edu>";
      author = "Pascal Hof <pascal.hof@udo.edu>,\nSebastian Menge <sebastian.menge@udo.edu>";
      homepage = "";
      url = "";
      synopsis = "View abstract syntax trees for your custom\nlanguages and parsers in a graphical (GTK+)\napplication";
      description = "Astview is a graphical viewer for abstract\nsyntax trees. It is implemented on the basis\nof scrap-your-boilerplate (i.e. data2tree)\nand works with all parsers that generate trees\nthat are instances of the Data.Data class.\nCustom parsers can be dynamically loaded\n(via package hint) at startup.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "astview" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."gtksourceview2" or (errorHandler.buildDepError "gtksourceview2"))
            (hsPkgs."astview-utils" or (errorHandler.buildDepError "astview-utils"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }