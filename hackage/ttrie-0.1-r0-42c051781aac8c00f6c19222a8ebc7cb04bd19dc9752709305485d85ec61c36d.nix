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
      identifier = { name = "ttrie"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2014-2015 Michael Schröder";
      maintainer = "mc.schroeder@gmail.com";
      author = "Michael Schröder";
      homepage = "http://github.com/mcschroeder/ttrie";
      url = "";
      synopsis = "Contention-free STM hash map";
      description = "A contention-free STM hash map.\n\\\"Contention-free\\\" means that the map will never cause spurious conflicts.\nA transaction operating on the map will only ever have to retry if\nanother transaction is operating on the same key at the same time.\n\nThis is an implementation of the /transactional trie/,\nwhich is basically a /lock-free concurrent hash trie/ lifted into STM.\nFor a detailed discussion, including an evaluation of its performance,\nsee Chapter 4 of <https://github.com/mcschroeder/thesis my master's thesis>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion-plus" or (buildDepError "criterion-plus"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
            (hsPkgs."stm-stats" or (buildDepError "stm-stats"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."ttrie" or (buildDepError "ttrie"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }