let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "astview"; version = "0.1.1"; };
      license = "BSD-4-Clause";
      copyright = "";
      maintainer = "Sebastian Menge <sebastian.menge@udo.edu>";
      author = "Pascal Hof <pascal.hof@udo.edu>,\nSebastian Menge <sebastian.menge@udo.edu>";
      homepage = "";
      url = "";
      synopsis = "A GTK-based abstract syntax tree viewer for custom languages and parsers";
      description = "Astview is a graphical viewer for abstract\nsyntax trees. It is implemented on the basis\nof scrap-your-boilerplate (i.e. data2tree)\nand works with all parsers that generate trees\nthat are instances of the Data.Data class.\nCustom parsers can be dynamically loaded\n(via package hint) at startup.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "astview" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."glade" or (buildDepError "glade"))
            (hsPkgs."gtksourceview2" or (buildDepError "gtksourceview2"))
            (hsPkgs."astview-utils" or (buildDepError "astview-utils"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }