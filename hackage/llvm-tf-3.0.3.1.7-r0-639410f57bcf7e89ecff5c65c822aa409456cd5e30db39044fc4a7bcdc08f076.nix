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
    flags = { developer = false; buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "llvm-tf"; version = "3.0.3.1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
      author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit using type families.";
      description = "High-level bindings to the LLVM compiler toolkit\nusing type families instead of functional dependencies.\n\nWe use the same module names as the @llvm@ package,\nwhich makes it harder to work with both packages from GHCi.\nYou may use the @-hide-package@ option.\nWe may change the module names later.\n\nA note on versioning:\nThe first two version numbers match the version of LLVM.\nIn order to be able to improve the Haskell API for the same version of LLVM,\nI use the first three numbers of the Cabal package version\nas the major version in the sense of the Package Versioning Policy PVP.\nThat is, a bump from 3.0.0 to 3.0.1 may contain substantial API changes,\na bump from 3.0.0.0 to 3.0.0.1 may contain API extensions,\nand a bump from 3.0.0.0.0 to 3.0.0.0.1 may contain API-preserving bugfixes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."llvm-ffi" or (buildDepError "llvm-ffi"))
          (hsPkgs."tfp" or (buildDepError "tfp"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."fixed-length" or (buildDepError "fixed-length"))
          (hsPkgs."non-empty" or (buildDepError "non-empty"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."vecLib" or (sysDepError "vecLib"));
        };
      exes = {
        "llvm-align" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-arith" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-array" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-brainf" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-call-conv" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."llvm-ffi" or (buildDepError "llvm-ffi"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-dot-prod" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-fibonacci" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-hello-jit" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-list" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-struct" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-varargs" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-vector" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }