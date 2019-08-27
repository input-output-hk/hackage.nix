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
      specVersion = "1.10";
      identifier = { name = "pandoc-japanese-filters"; version = "0.1.0.1"; };
      license = "GPL-2.0-only";
      copyright = "(c) Hiromi ISHII 2015";
      maintainer = "Hiromi ISHII <konn.jinro_at_gmail.com>";
      author = "Hiromi ISHII <konn.jinro_at_gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Japanese-specific markup filters for pandoc.";
      description = "Japanese-specific markup filters for pandoc.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tate-math-to-svg-filter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."HaTeX" or (buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or (buildDepError "HaTeX-qq"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."effin" or (buildDepError "effin"))
            ];
          };
        "math-to-svg-filter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."HaTeX" or (buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or (buildDepError "HaTeX-qq"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."effin" or (buildDepError "effin"))
            ];
          };
        "japanese-filter" = {
          depends = [
            (hsPkgs."HaTeX" or (buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or (buildDepError "HaTeX-qq"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            ];
          };
        "env-to-div-filter" = {
          depends = [
            (hsPkgs."HaTeX" or (buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or (buildDepError "HaTeX-qq"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            ];
          };
        };
      };
    }