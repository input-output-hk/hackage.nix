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
      specVersion = "1.6";
      identifier = { name = "phybin"; version = "0.1.2.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Ryan Newton";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>";
      homepage = "http://people.csail.mit.edu/newton/phybin/";
      url = "";
      synopsis = "Utility for binning phylogenetic trees in Newick format.";
      description = "Classifies (bins) input Newick trees by topology, creating output files that\ncharacterize the size and contents of each bin (including\ngenerating GraphViz-based visual representations of the tree topologies).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "phybin" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."stringtable-atom" or (buildDepError "stringtable-atom"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."prettyclass" or (buildDepError "prettyclass"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."HSH" or (buildDepError "HSH"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          };
        };
      };
    }