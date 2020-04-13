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
      specVersion = "2.2";
      identifier = { name = "capnp"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "2016-2020 haskell-capnp contributors (see CONTRIBUTORS file).";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://github.com/zenhack/haskell-capnp";
      url = "";
      synopsis = "Cap'n Proto for Haskell";
      description = "A native Haskell implementation of the Cap'N Proto cerialization format and\nRPC protocol.\n\nThe library implements serialization and level 1 RPC.\n\nThe \"Capnp.Tutorial\" module is the best place to start reading; the\nreference documentation can seem bewildering without that context.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytes" or (buildDepError "bytes"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."reinterpret-cast" or (buildDepError "reinterpret-cast"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."monad-stm" or (buildDepError "monad-stm"))
          (hsPkgs."cpu" or (buildDepError "cpu"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."data-default-instances-vector" or (buildDepError "data-default-instances-vector"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
          (hsPkgs."list-t" or (buildDepError "list-t"))
          (hsPkgs."focus" or (buildDepError "focus"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."network-simple" or (buildDepError "network-simple"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."supervisors" or (buildDepError "supervisors"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          ];
        buildable = true;
        };
      exes = {
        "capnpc-haskell" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytes" or (buildDepError "bytes"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."reinterpret-cast" or (buildDepError "reinterpret-cast"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."monad-stm" or (buildDepError "monad-stm"))
            (hsPkgs."capnp" or (buildDepError "capnp"))
            (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytes" or (buildDepError "bytes"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."reinterpret-cast" or (buildDepError "reinterpret-cast"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."monad-stm" or (buildDepError "monad-stm"))
            (hsPkgs."capnp" or (buildDepError "capnp"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-simple" or (buildDepError "network-simple"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."process-extras" or (buildDepError "process-extras"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-io" or (buildDepError "quickcheck-io"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."heredoc" or (buildDepError "heredoc"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."supervisors" or (buildDepError "supervisors"))
            ];
          buildable = true;
          };
        };
      };
    }