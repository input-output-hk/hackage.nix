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
      identifier = { name = "CSPM-cspm"; version = "0.4.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>";
      author = "Marc Fontaine";
      homepage = "http://www.stups.uni-duesseldorf.de/~fontaine/csp";
      url = "";
      synopsis = "cspm command line tool for analyzing CSPM specifications.";
      description = "cspm is a small command line tool for analyzing CSPM specifications.\nIt supports serveral modes of operation.\nFor example as:\n\n* 'cspm --help'      -> print a help message.\n\n* 'cspm eval '3+4''  -> evaluate an expression.\n\n* 'cspm trace spec.csp' -> interactively trace a process.\n\n* 'cspm assert spec.csp' -> check the assertions of a specification.\n\n* 'cspm dot spec.csp'   -> compute the labeled transition system of a process\nand dump it as dot-file.\n\n* 'cspm fdr spec.csp'   -> compute the LTS\nand dump it a fdr script suitable for refinement checking.\n\n* 'cspm toprolog spec.csp' -> generate prolog output for ProB\n\ncspm is not a full featured FDR replacement.\nThe main purpose of cspm is to show how the different CSPM-packages work together.\nLTS computation can demonstrate nice speed-ups on multi-core machines.\nTry for example 'cspm +RTS -N7 -RTS fdr spec.csp' to use 7 cores.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cspm" = {
          depends = [
            (hsPkgs."CSPM-Frontend" or (buildDepError "CSPM-Frontend"))
            (hsPkgs."CSPM-CoreLanguage" or (buildDepError "CSPM-CoreLanguage"))
            (hsPkgs."CSPM-FiringRules" or (buildDepError "CSPM-FiringRules"))
            (hsPkgs."CSPM-Interpreter" or (buildDepError "CSPM-Interpreter"))
            (hsPkgs."CSPM-ToProlog" or (buildDepError "CSPM-ToProlog"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }