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
      specVersion = "1.12";
      identifier = { name = "odd-jobs"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2020 Saurabh Nanda";
      maintainer = "saurabhnanda@gmail.com";
      author = "Saurabh Nanda";
      homepage = "https://www.haskelltutorials.com/odd-jobs";
      url = "";
      synopsis = "A full-featured PostgreSQL-backed job queue (with an admin UI)";
      description = "- Background jobs library for Haskell.\n- Extracted from production code at [Vacation Labs](https://www.vacationlabs.com).\n- Inspired by the Delayed Jobs library in Rails.\n- Queue backend is a Postgres table.\n- Queue is monitored using, both, LISTEN/NOTIFY and polling the DB.\n- Comes with an in-built admin UI (WIP).\n- Comes with utilities to help you built a CLI for your job-queue.\n- Highly configurable and monitorable";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."direct-daemonize" or (buildDepError "direct-daemonize"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."friendly-time" or (buildDepError "friendly-time"))
          (hsPkgs."hostname" or (buildDepError "hostname"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-lucid" or (buildDepError "servant-lucid"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."string-conv" or (buildDepError "string-conv"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-conversions" or (buildDepError "text-conversions"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."timing-convenience" or (buildDepError "timing-convenience"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        buildable = true;
        };
      exes = {
        "devel" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."direct-daemonize" or (buildDepError "direct-daemonize"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."foreign-store" or (buildDepError "foreign-store"))
            (hsPkgs."friendly-time" or (buildDepError "friendly-time"))
            (hsPkgs."hostname" or (buildDepError "hostname"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."odd-jobs" or (buildDepError "odd-jobs"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
            (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-lucid" or (buildDepError "servant-lucid"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."string-conv" or (buildDepError "string-conv"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-conversions" or (buildDepError "text-conversions"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."timing-convenience" or (buildDepError "timing-convenience"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      tests = {
        "jobrunner" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."direct-daemonize" or (buildDepError "direct-daemonize"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."friendly-time" or (buildDepError "friendly-time"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hostname" or (buildDepError "hostname"))
            (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."mmorph" or (buildDepError "mmorph"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."odd-jobs" or (buildDepError "odd-jobs"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-lucid" or (buildDepError "servant-lucid"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."string-conv" or (buildDepError "string-conv"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (buildDepError "tasty-discover"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-conversions" or (buildDepError "text-conversions"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."timing-convenience" or (buildDepError "timing-convenience"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }