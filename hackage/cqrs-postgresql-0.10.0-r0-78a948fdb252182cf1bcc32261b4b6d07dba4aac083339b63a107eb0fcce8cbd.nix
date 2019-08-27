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
      identifier = { name = "cqrs-postgresql"; version = "0.10.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "PostgreSQL backend for the cqrs package.";
      description = "PostgreSQL backend for the cqrs package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
          (hsPkgs."cqrs-core" or (buildDepError "cqrs-core"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."enclosed-exceptions" or (buildDepError "enclosed-exceptions"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."uuid-types" or (buildDepError "uuid-types"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cqrs-core" or (buildDepError "cqrs-core"))
            (hsPkgs."cqrs-testkit" or (buildDepError "cqrs-testkit"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."pg-harness-client" or (buildDepError "pg-harness-client"))
            (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
            (hsPkgs."uuid-types" or (buildDepError "uuid-types"))
            (hsPkgs."cqrs-postgresql" or (buildDepError "cqrs-postgresql"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        };
      };
    }