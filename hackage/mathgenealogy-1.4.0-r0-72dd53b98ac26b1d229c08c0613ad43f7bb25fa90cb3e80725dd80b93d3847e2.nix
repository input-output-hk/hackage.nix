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
      specVersion = "1.4";
      identifier = { name = "mathgenealogy"; version = "1.4.0"; };
      license = "GPL-2.0-only";
      copyright = "(C) 2010-2015 Peter Robinson";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson";
      homepage = "";
      url = "";
      synopsis = "Discover your (academic) ancestors!";
      description = "A command line program for extracting data from the\nMathematics Genealogy Project (<http://genealogy.math.ndsu.nodak.edu/index.php>).\nNote that this database also contains many entries of computer scientists.\n\nLookup your entry at <http://genealogy.math.ndsu.nodak.edu/index.php> and\nthen use that URL as a command line argument.\nFor example, if Carl Gauss wanted to explore his academic ancestors, he\nwould type\n\n> mathgenealogy http://genealogy.math.ndsu.nodak.edu/id.php?id=18231\n\nwhich produces the directed acyclic graph\n<http://dl.dropbox.com/u/22490968/genealogy_of_gauss.svg>. See\n\n> mathgenealogy --help\n\nfor the complete list of options. Requires the /dot/ program, which is\npart of the GraphViz package (/version 2.28.0 or later!/) to run.\n\nNote: Due to some inconsistencies in the character encodings used on\nmathgenealogy, you might need to correct entries that use special characters.\n\nFeedback and bug reports are appreciated!\n\n/Changes in 1.4.0:/\n\n* Updated to handle changes in page layout.\n\n/Changes in 1.3.0:/\n\n* Switched to HTML-like labels in GraphViz. This is required for the advanced\nfont formatting options. ATTENTION: this needs a recent\ninstallation of GraphViz (Linux: 2.28.0; MacOS: 2.29) and will yield\nbest results for SVG output files. If you have an older version of GraphViz\nor run into issues, try the '--oldtextlabels' option.\n\n* Downloaded entries are stored locally. This avoids re-downloading the same\ndata if you want to generate multiple graphs of the same entry with\ndifferent formatting options.\n\n* Added more options for fine-tuning the fonts and colors. (requested by users)\n\n* Default output is now SVG, as this is the format best supported by GraphViz.\n\n/Changes in 1.2.0:/\n\n* Fixed handling of entries that have multiple degrees. (reported by Dima Pasechnik)\n\n/Changes in 1.1.1:/\n\n* Provide error message when given invalid start URL\n\n* Documentation and code cleanup\n\n/Changes in 1.0.0:/\n\n* Choice between PDF and PNG output\n\n* Optional inclusion of PhD theses in output\n\n/Changes in 0.0.2:/\n\n* Fixed handling of trailing commas (reported by Alexander Koessler)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mathgenealogy" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        };
      };
    }