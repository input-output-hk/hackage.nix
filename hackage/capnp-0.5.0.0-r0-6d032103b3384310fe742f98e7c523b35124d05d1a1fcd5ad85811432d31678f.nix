{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."reinterpret-cast" or (errorHandler.buildDepError "reinterpret-cast"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."monad-stm" or (errorHandler.buildDepError "monad-stm"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."data-default-instances-vector" or (errorHandler.buildDepError "data-default-instances-vector"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."supervisors" or (errorHandler.buildDepError "supervisors"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          ];
        buildable = true;
        };
      exes = {
        "capnpc-haskell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."reinterpret-cast" or (errorHandler.buildDepError "reinterpret-cast"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."monad-stm" or (errorHandler.buildDepError "monad-stm"))
            (hsPkgs."capnp" or (errorHandler.buildDepError "capnp"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."reinterpret-cast" or (errorHandler.buildDepError "reinterpret-cast"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."monad-stm" or (errorHandler.buildDepError "monad-stm"))
            (hsPkgs."capnp" or (errorHandler.buildDepError "capnp"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-io" or (errorHandler.buildDepError "quickcheck-io"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."heredoc" or (errorHandler.buildDepError "heredoc"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."supervisors" or (errorHandler.buildDepError "supervisors"))
            ];
          buildable = true;
          };
        };
      };
    }