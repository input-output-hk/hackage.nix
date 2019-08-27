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
      identifier = { name = "async-refresh-tokens"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017, 2018 Moritz Clasmeier";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Clasmeier";
      homepage = "https://github.com/mtesseract/async-refresh-tokens#readme";
      url = "";
      synopsis = "Package implementing core logic for refreshing of expiring access tokens";
      description = "This package can be used for renewal of expiring access tokens according to user-provided actions. Tokens will be stored in a transactional variable (TVar).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async-refresh" or (buildDepError "async-refresh"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
          ];
        };
      tests = {
        "async-refresh-tokens-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."async-refresh-tokens" or (buildDepError "async-refresh-tokens"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            ];
          };
        };
      };
    }