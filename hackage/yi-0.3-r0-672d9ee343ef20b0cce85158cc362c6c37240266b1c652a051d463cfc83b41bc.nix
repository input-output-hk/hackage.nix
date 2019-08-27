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
    flags = { dynamic = true; vty = true; gtk = true; cocoa = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "yi"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "http://haskell.org/haskellwiki/Yi";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written and extensible in Haskell. The goal of Yi is\nto provide a flexible, powerful, and correct editor core which is dynamically\nscriptable in Haskell.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "yi" = {
          depends = ((([
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."fingertree" or (buildDepError "fingertree"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            ] ++ (pkgs.lib).optional (flags.dynamic) (hsPkgs."ghc" or (buildDepError "ghc"))) ++ (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or (buildDepError "vty"))) ++ (pkgs.lib).optional (flags.gtk) (hsPkgs."gtk" or (buildDepError "gtk"))) ++ (pkgs.lib).optionals (flags.cocoa) [
            (hsPkgs."HOC" or (buildDepError "HOC"))
            (hsPkgs."HOC-AppKit" or (buildDepError "HOC-AppKit"))
            (hsPkgs."HOC-Foundation" or (buildDepError "HOC-Foundation"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
            ];
          };
        };
      };
    }