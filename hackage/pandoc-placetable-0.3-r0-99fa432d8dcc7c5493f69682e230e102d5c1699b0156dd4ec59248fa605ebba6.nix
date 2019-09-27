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
    flags = { inlinemarkdown = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc-placetable"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2015 Mauro Bieg";
      maintainer = "Mauro Bieg";
      author = "Mauro Bieg";
      homepage = "https://github.com/mb21/pandoc-placetable";
      url = "";
      synopsis = "Pandoc filter to include CSV files";
      description = "A Pandoc filter that replaces code blocks (that have the class `table`)\nwith tables generated from CSV. The CSV is read from the code block\nand from an optional external CSV file and concatenated. There's a flag\nto enable parsing of inline markdown.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pandoc-placetable" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."spreadsheet" or (buildDepError "spreadsheet"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            ] ++ (pkgs.lib).optional (flags.inlinemarkdown) (hsPkgs."pandoc" or (buildDepError "pandoc"));
          buildable = true;
          };
        };
      };
    }