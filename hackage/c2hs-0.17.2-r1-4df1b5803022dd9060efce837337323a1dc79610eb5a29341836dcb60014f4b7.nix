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
    flags = { base3 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "c2hs"; version = "0.17.2"; };
      license = "GPL-2.0-only";
      copyright = "Copyright (c) 1999-2007 Manuel M T Chakravarty\n2005-2013 Duncan Coutts\n2008      Benedikt Huber";
      maintainer = "chak@cse.unsw.edu.au, duncan@community.haskell.org, ian@skybluetrades.net";
      author = "Manuel M T Chakravarty";
      homepage = "https://github.com/haskell/c2hs";
      url = "";
      synopsis = "C->Haskell FFI tool that gives some cross-language type safety";
      description = "C->Haskell assists in the development of Haskell bindings to C\nlibraries. It extracts interface information from C header\nfiles and generates Haskell code with foreign imports and\nmarshaling. Unlike writing foreign imports by hand (or using\nhsc2hs), this ensures that C functions are imported with the\ncorrect Haskell types.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "c2hs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."language-c" or (buildDepError "language-c"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ] ++ (if flags.base3
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."pretty" or (buildDepError "pretty"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          };
        };
      tests = {
        "test-bugs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
            ];
          };
        "test-system" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
            ];
          };
        "regression-suite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          };
        };
      };
    }