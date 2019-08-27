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
      identifier = { name = "cpsa"; version = "2.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ramsdell@mitre.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Symbolic cryptographic protocol analyzer";
      description = "The Cryptographic Protocol Shapes Analyzer (CPSA) attempts to\nenumerate all essentially different executions possible for a\ncryptographic protocol.  We call them the shapes of the protocol.\nNaturally occurring protocols have only finitely many, indeed very\nfew shapes.  Authentication and secrecy properties are easy to\ndetermine from them, as are attacks and anomalies.\n\nFor each input problem, the CPSA program is given some initial\nbehavior, and it discovers what shapes are compatible with\nit. Normally, the initial behavior is from the point of view of one\nparticipant. The analysis reveals what the other participants must\nhave done, given the participant's view. The search is based on a\nhigh-level algorithm that was claimed to be complete, i.e. every\nshape can in fact be found in a finite number of steps. Further\ntheoretical work showed classes of executions that are not found by\nthe algorithm, however it also showed that every omitted execution\nrequires an unnatural interpretation of a protocol's roles.  Hence\nthe algorithm is complete relative to natural role semantics.\n\nThe package contains a set of programs used to perform and display\nthe analysis.  A standards complient browser, such as Firefox,\nSafari, or Chrome, is required to display the results.  Program\ndocumentation is in the doc directory in the source distribution,\nand installed in the package's data directory.  You can locate the\npackage's data directory by typing \"cpsa --help\" to a command\nprompt.  New users should study the documentation and the sample\ninputs in the data directory.  The source distribution includes a\ntest suite with an expanded set of input files and is easily\ninstalled on operating systems that decend from Unix.  Serious\nWindows users should install MSYS so as to allow the use of make and\nscript execution.\n\nThe theory and algorithm used by CPSA was developed with the help of\nJoshua D. Guttman, John D. Ramsdell, Jon C. Herzog, Shaddin\nF. Doghmi, F. Javier Thayer, Paul D. Rowe, and Moses D. Liskov.\nJohn D. Ramsdell implemented the algorithm in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cpsa" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          };
        "cpsagraph" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "cpsashapes" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "cpsaannotations" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "cpsaparameters" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "cpsapp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "cpsajson" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "cpsadiff" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "cpsasas" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }