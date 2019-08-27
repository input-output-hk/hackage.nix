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
      identifier = { name = "shelltestrunner"; version = "1.3.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://joyful.com/shelltestrunner";
      url = "";
      synopsis = "A tool for testing command-line programs.";
      description = "shelltestrunner is a cross-platform tool for testing command-line\nprograms (or arbitrary shell commands.)  It reads simple declarative tests\nspecifying a command, some input, and the expected output, error output\nand exit status.  Tests can be run selectively, in parallel, with a\ntimeout, in color, and/or with differences highlighted.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shelltest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cabal-file-th" or (buildDepError "cabal-file-th"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            ];
          };
        };
      };
    }