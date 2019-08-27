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
    flags = {
      splitbase = true;
      tests = false;
      example = false;
      hunit = true;
      quickcheck = true;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "test-framework"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "http://github.com/batterseapower/test-framework";
      url = "";
      synopsis = "Framework for running and organising tests, with HUnit and QuickCheck support";
      description = "Allows QuickCheck properties and HUnit test cases to be assembled into test groups, run in parallel (but reported\nin deterministic order, to aid diff interpretation) and filtered and controlled by command line options.\nAll of this comes with colored test output, progress reporting and test statistics output.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          ] ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))) ++ (pkgs.lib).optional (flags.hunit) (hsPkgs."HUnit" or (buildDepError "HUnit"))) ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      exes = {
        "test-framework-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."containers" or (buildDepError "containers"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          };
        "test-framework-example" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."containers" or (buildDepError "containers"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          };
        };
      };
    }