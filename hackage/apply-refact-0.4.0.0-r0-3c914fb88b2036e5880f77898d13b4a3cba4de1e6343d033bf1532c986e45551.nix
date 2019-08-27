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
      identifier = { name = "apply-refact"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Perform refactorings specified by the refact library.";
      description = "Perform refactorings specified by the refact library. It is primarily used with HLint's --refactor flag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."refact" or (buildDepError "refact"))
          (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ];
        };
      exes = {
        "refactor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."refact" or (buildDepError "refact"))
            (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."tasty-expected-failure" or (buildDepError "tasty-expected-failure"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."refact" or (buildDepError "refact"))
            (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."silently" or (buildDepError "silently"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }