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
      identifier = { name = "llvm-tf"; version = "3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
      author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit using type families.";
      description = "High-level bindings to the LLVM compiler toolkit\nusing type families instead of functional dependencies.\n\nWe use the same module names as the @llvm@ package,\nwhich makes it harder to work with both packages from GHCi.\nYou may use the @-hide-package@ option.\nWe may change the module names later.\n\nA note on versioning:\nThe versions of this package are loosely based on the LLVM version.\nHowever, we depend on a relatively stable part of LLVM\nand provide a relatively stable API for it.\nWe conform to the Package Versioning Policy PVP,\ni.e. we increase the version of this package when its API changes,\nbut not necessarily when we add support for a new LLVM version.\nWe support all those LLVM versions\nthat are supported by our @llvm-ffi@ dependency.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."llvm-ffi" or (buildDepError "llvm-ffi"))
          (hsPkgs."tfp" or (buildDepError "tfp"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."enumset" or (buildDepError "enumset"))
          (hsPkgs."fixed-length" or (buildDepError "fixed-length"))
          (hsPkgs."non-empty" or (buildDepError "non-empty"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
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
        "llvm-intrinsic" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
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
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }