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
    flags = {
      no-fusion-plugin = false;
      use-gauge = false;
      drinkery = false;
      conduit = false;
      pipes = false;
      machines = false;
      streaming = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "streaming-benchmarks"; version = "0.4.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2017 Harendra Kumar";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies";
      homepage = "https://streamly.composewell.com";
      url = "";
      synopsis = "Measures and compares the performance of streaming libraries";
      description = "This package provides micro-benchmarks to measure and compare the\nperformance of various streaming implementations in Haskell.\n\nThe following packages are supported:\n\n* base (Haskell lists)\n* streamly\n* streaming\n* pipes\n* machines\n* conduit\n* drinkery";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ (if flags.use-gauge
          then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
          else [
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ]);
        buildable = true;
      };
      benchmarks = {
        "Streamly" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ])) ++ pkgs.lib.optional (!flags.no-fusion-plugin) (hsPkgs."fusion-plugin" or (errorHandler.buildDepError "fusion-plugin"));
          buildable = true;
        };
        "StreamlyPure" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ])) ++ pkgs.lib.optional (!flags.no-fusion-plugin) (hsPkgs."fusion-plugin" or (errorHandler.buildDepError "fusion-plugin"));
          buildable = true;
        };
        "List" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ]);
          buildable = true;
        };
        "DList" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ]);
          buildable = true;
        };
        "Streaming" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ])) ++ pkgs.lib.optional (flags.streaming) (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"));
          buildable = if flags.streaming then true else false;
        };
        "Machines" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ])) ++ pkgs.lib.optional (flags.machines) (hsPkgs."machines" or (errorHandler.buildDepError "machines"));
          buildable = if flags.machines then true else false;
        };
        "Pipes" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ])) ++ pkgs.lib.optional (flags.pipes) (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"));
          buildable = if flags.pipes then true else false;
        };
        "Conduit" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ])) ++ pkgs.lib.optional (flags.conduit) (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"));
          buildable = if flags.conduit then true else false;
        };
        "Drinkery" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ])) ++ pkgs.lib.optional (flags.drinkery) (hsPkgs."drinkery" or (errorHandler.buildDepError "drinkery"));
          buildable = if flags.drinkery then true else false;
        };
        "StreamlyArray" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ])) ++ pkgs.lib.optional (!flags.no-fusion-plugin) (hsPkgs."fusion-plugin" or (errorHandler.buildDepError "fusion-plugin"));
          buildable = true;
        };
        "Sequence" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ]);
          buildable = true;
        };
        "ByteString" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ]);
          buildable = true;
        };
        "ByteStringLazy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ]);
          buildable = true;
        };
        "Text" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ]);
          buildable = true;
        };
        "VectorStreams" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ]);
          buildable = true;
        };
        "Vector" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ]);
          buildable = true;
        };
        "VectorUnboxed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ]);
          buildable = true;
        };
        "VectorStorable" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."streaming-benchmarks" or (errorHandler.buildDepError "streaming-benchmarks"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ]);
          buildable = true;
        };
      };
    };
  }