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
    flags = { gpl = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "git-vogue"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Anchor Systems, Pty Ltd and Others";
      maintainer = "Anchor Engineering <engineering@anchor.com.au>";
      author = "Anchor Engineering <engineering@anchor.com.au>";
      homepage = "https://github.com/anchor/git-vogue";
      url = "";
      synopsis = "A framework for pre-commit checks.";
      description = "Make your Haskell git repositories fashionable.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."list-tries" or (buildDepError "list-tries"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."hlint" or (buildDepError "hlint"))
          (hsPkgs."stylish-haskell" or (buildDepError "stylish-haskell"))
          (hsPkgs."ghc-mod" or (buildDepError "ghc-mod"))
          ];
        };
      exes = {
        "git-vogue" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."git-vogue" or (buildDepError "git-vogue"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        "git-vogue-cabal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."git-vogue" or (buildDepError "git-vogue"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        "git-vogue-hlint" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            (hsPkgs."cpphs" or (buildDepError "cpphs"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."git-vogue" or (buildDepError "git-vogue"))
            (hsPkgs."hscolour" or (buildDepError "hscolour"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        "git-vogue-stylish" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."git-vogue" or (buildDepError "git-vogue"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."stylish-haskell" or (buildDepError "stylish-haskell"))
            ];
          };
        "git-vogue-ghc-mod" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."git-vogue" or (buildDepError "git-vogue"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."ghc-mod" or (buildDepError "ghc-mod"))
            ];
          };
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."git-vogue" or (buildDepError "git-vogue"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        };
      };
    }