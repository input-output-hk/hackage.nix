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
      identifier = { name = "shh"; version = "0.2.0.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, 2019 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "";
      url = "";
      synopsis = "Simple shell scripting from Haskell";
      description = "Provides a shell scripting environment for Haskell. It\nhelps you all external binaries, and allows you to\nperform many shell-like functions, such as piping\nand redirection.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        };
      exes = {
        "shh" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."shh" or (buildDepError "shh"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (buildToolDepError "ghc")))
            ];
          };
        "shh-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."shh" or (buildDepError "shh"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.coreutils or (pkgs.buildPackages.coreutils or (buildToolDepError "coreutils")))
            (hsPkgs.buildPackages.vim or (pkgs.buildPackages.vim or (buildToolDepError "vim")))
            ];
          };
        };
      tests = {
        "shh-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."shh" or (buildDepError "shh"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.perl or (pkgs.buildPackages.perl or (buildToolDepError "perl")))
            (hsPkgs.buildPackages.vim or (pkgs.buildPackages.vim or (buildToolDepError "vim")))
            ];
          };
        };
      };
    }