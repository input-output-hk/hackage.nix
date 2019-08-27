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
      old-base = false;
      build-tests = false;
      bamsegen = false;
      hsdotnet = true;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "bamse"; version = "0.9.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sof@forkIO.com";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "";
      url = "";
      synopsis = "A Windows Installer (MSI) generator framework";
      description = "Bamse is a framework for building Windows Installers for\nyour Windows applications, giving you a comprehensive set\nof features to put together MSIs using Haskell.\n\nBamse lets you author /installer generators/, i.e., applications\nthat will generate Windows Installers when invoked (and pointed\nat the files and other resources to include for that particular\ninstaller instance.) Bamse is also accessible as a library, letting\nyou integrate MSI creation into your codebase.\n\nThe package has a number of example /templates/ showing how to\nspecify a generator; /real/ examples that have been used to ship\nsoftware by a number of projects and companies. See the @templates/@\ndirectory; one good way to get started is to modify one of these\nto suit the needs of the installers you are looking to create.\n\nFor a worked example of how to build installers from your Cabal packages,\nand possibly automatically install them when running the MSI, see @examples/Cabal.hs@\n(and the README in that directory.)";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."com" or (buildDepError "com"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        };
      exes = {
        "hsDotnetGen" = {};
        "bamseGen" = {};
        "runTests" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }