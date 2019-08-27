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
    flags = { examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "craftwerk-gtk"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Malte Harder <malte.harder@gmail.com>";
      author = "Malte Harder <malte.harder@gmail.com>";
      homepage = "http://mahrz.github.com/craftwerk.html";
      url = "";
      synopsis = "Gtk UI for Craftwerk.";
      description = "Gtk UI functions for Craftwerk, a high-level and easy to use graphics library\nwith integrated TikZ output.\n\nCraftwerk is a high-level 2D vector graphics library for output of\nTikZ pictures that can be typeset using (pdf)LaTeX. The TikZ library\nand documentation can be found at: <http://sourceforge.net/projects/pgf>.\n\nCraftwerk tries to encapsulate the graphics backend such that figures\ncan also be rendered with a Cairo backend and quickly displayed in a\nGtk window. The aim is to support TikZ and Cairo seamlessly as\npossible, meaning that graphics produced with either backend should\nlook as similar as possible. Other backends are easily written and the\naim is to provide generic fallback functions for features that are not\nnatively supported by some backend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."craftwerk-cairo" or (buildDepError "craftwerk-cairo"))
          (hsPkgs."craftwerk" or (buildDepError "craftwerk"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = {
        "example1" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."craftwerk" or (buildDepError "craftwerk"))
            (hsPkgs."craftwerk-cairo" or (buildDepError "craftwerk-cairo"))
            (hsPkgs."craftwerk-gtk" or (buildDepError "craftwerk-gtk"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }