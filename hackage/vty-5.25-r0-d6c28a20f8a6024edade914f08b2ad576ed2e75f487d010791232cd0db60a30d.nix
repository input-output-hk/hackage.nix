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
      specVersion = "1.18";
      identifier = { name = "vty"; version = "5.25"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty (cygnus@foobox.com)";
      author = "AUTHORS";
      homepage = "https://github.com/jtdaugherty/vty";
      url = "";
      synopsis = "A simple terminal UI library";
      description = "vty is terminal GUI library in the niche of ncurses. It is intended to\nbe easy to use, have no confusing corner cases, and good support for\ncommon terminal types.\n\nSee the @vty-examples@ package as well as the program\n@test/interactive_terminal_test.hs@ included in the @vty@ package for\nexamples on how to use the library.\n\nImport the \"Graphics.Vty\" convenience module to get access to the core\nparts of the library.\n\n&#169; 2006-2007 Stefan O'Rear; BSD3 license.\n\n&#169; Corey O'Connor; BSD3 license.\n\n&#169; Jonathan Daugherty; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."terminfo" or (buildDepError "terminfo"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (buildDepError "semigroups"));
        };
      exes = {
        "vty-mode-demo" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        "vty-demo" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      tests = {
        "verify-using-mock-terminal" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."terminfo" or (buildDepError "terminfo"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-terminal" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."terminfo" or (buildDepError "terminfo"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-display-attributes" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-empty-image-props" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-eval-terminfo-caps" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."terminfo" or (buildDepError "terminfo"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-image-ops" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-image-trans" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-inline" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-parse-terminfo-caps" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."terminfo" or (buildDepError "terminfo"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-simple-span-generation" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-crop-span-generation" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-layers-span-generation" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-utf8-width" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-using-mock-input" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."quickcheck-assertions" or (buildDepError "quickcheck-assertions"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-smallcheck" or (buildDepError "test-framework-smallcheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."terminfo" or (buildDepError "terminfo"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "verify-config" = {
          depends = [
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."quickcheck-assertions" or (buildDepError "quickcheck-assertions"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-smallcheck" or (buildDepError "test-framework-smallcheck"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."string-qq" or (buildDepError "string-qq"))
            (hsPkgs."terminfo" or (buildDepError "terminfo"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }