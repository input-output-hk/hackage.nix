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
    flags = { roundtrip = false; dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-exactprint"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alan.zimm@gmail.com";
      author = "Alan Zimmerman, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "ExactPrint for GHC";
      description = "Using the API Annotations available from GHC 7.10.2, this\nlibrary provides a means to round trip any code that can\nbe compiled by GHC, currently excluding lhs files.\n\nIt does this with a phased approach\n\n* Delta - converts GHC API Annotations into relative\noffsets, indexed by SrcSpan\n\n* Transform - functions to facilitate changes to\nthe AST, adjusting the annotations generated in the\nDelta phase to suit the changes.\n\n* Print - converts an AST and its annotations to\nproperly formatted source text.\n\n* Pretty - adds annotations to an AST (fragment) so that\nthe output can be parsed back to the same AST.\n\n\nNote: requires GHC 7.10.2 or later";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."free" or (buildDepError "free"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."fail" or (buildDepError "fail"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.11") (hsPkgs."ghc-boot" or (buildDepError "ghc-boot"));
        };
      exes = {
        "roundtrip" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.10.2" && flags.roundtrip) ([
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."time" or (buildDepError "time"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.11") (hsPkgs."ghc-boot" or (buildDepError "ghc-boot")));
          };
        "static" = {
          depends = (pkgs.lib).optionals (flags.roundtrip) ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.11") (hsPkgs."ghc-boot" or (buildDepError "ghc-boot")));
          };
        "prepare-hackage" = {
          depends = (pkgs.lib).optionals (flags.roundtrip) ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.11") (hsPkgs."ghc-boot" or (buildDepError "ghc-boot")));
          };
        };
      tests = {
        "test" = {
          depends = (([
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."silently" or (buildDepError "silently"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."fail" or (buildDepError "fail"))) ++ (if flags.dev
            then [ (hsPkgs."free" or (buildDepError "free")) ]
            else [
              (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.11") (hsPkgs."ghc-boot" or (buildDepError "ghc-boot"));
          };
        };
      };
    }