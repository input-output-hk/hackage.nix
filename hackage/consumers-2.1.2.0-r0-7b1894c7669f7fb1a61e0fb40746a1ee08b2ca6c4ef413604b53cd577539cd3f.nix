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
      identifier = { name = "consumers"; version = "2.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/consumers";
      url = "";
      synopsis = "Concurrent PostgreSQL data consumers";
      description = "Library for setting up concurrent consumers of data\nstored inside PostgreSQL database in a simple,\ndeclarative manner.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."hpqtypes" or (buildDepError "hpqtypes"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."lifted-threads" or (buildDepError "lifted-threads"))
          (hsPkgs."log-base" or (buildDepError "log-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."monad-time" or (buildDepError "monad-time"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          ];
        };
      tests = {
        "consumers-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."consumers" or (buildDepError "consumers"))
            (hsPkgs."hpqtypes" or (buildDepError "hpqtypes"))
            (hsPkgs."hpqtypes-extras" or (buildDepError "hpqtypes-extras"))
            (hsPkgs."log-base" or (buildDepError "log-base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "consumers-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."consumers" or (buildDepError "consumers"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."hpqtypes" or (buildDepError "hpqtypes"))
            (hsPkgs."hpqtypes-extras" or (buildDepError "hpqtypes-extras"))
            (hsPkgs."log-base" or (buildDepError "log-base"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."monad-time" or (buildDepError "monad-time"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            ];
          };
        };
      };
    }