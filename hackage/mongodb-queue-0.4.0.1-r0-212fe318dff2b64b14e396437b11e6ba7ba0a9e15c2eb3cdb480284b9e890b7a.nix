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
      specVersion = "1.8";
      identifier = { name = "mongodb-queue"; version = "0.4.0.1"; };
      license = "MIT";
      copyright = "Daggerboard Inc. makers of docmunch.com";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Daggerboard Inc. Greg Weber";
      homepage = "https://github.com/docmunch/haskell-mongodb-queue";
      url = "";
      synopsis = "message queue using MongoDB";
      description = "A simple messaging queue using MongoDB. This trades having a good queue for ease of deployment. This is designed to be much worse at scale than real queueing infrastructure. However, it is very simple to start using if you are already running MongoDB. You could probably fork this code to make it work with a different database that you are already using.\n\nThere are 2 options for receiving a message: polling or tailable cursors. Polling is obviously inefficient, but it works against an index on a capped collection, so it should still be fairly efficient, and as fast as the polling interval you set. Tailable cursors respond very quickly and don't re-query the database. However, there is an outstanding bug that they use up CPU on the database when the system is idle, particularly as more tailable cursors are added. The idle CPU usage will become worse as you scale out to multiple worker processes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."mongoDB" or (buildDepError "mongoDB"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."mongoDB" or (buildDepError "mongoDB"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          };
        };
      };
    }