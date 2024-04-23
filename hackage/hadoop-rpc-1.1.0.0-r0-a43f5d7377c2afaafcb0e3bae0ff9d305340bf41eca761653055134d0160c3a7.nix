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
    flags = { travis = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hadoop-rpc"; version = "1.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley, Conrad Parker, Luke Clifton";
      homepage = "http://github.com/jystic/hadoop-rpc";
      url = "";
      synopsis = "Use the Hadoop RPC interface from Haskell.";
      description = "Use the Hadoop RPC interface from Haskell.\n\nThis version only supports v9 of the RPC protocol (CDH 5.x and above).\n\nUse hadoop-rpc-0.x.x.x if you need v7 support.\n\n/The API is still evolving and is highly likely to change in the future./";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."gsasl" or (errorHandler.buildDepError "gsasl"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."protobuf" or (errorHandler.buildDepError "protobuf"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."socks" or (errorHandler.buildDepError "socks"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
        ];
        buildable = true;
      };
      tests = {
        "hdfs-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hadoop-rpc" or (errorHandler.buildDepError "hadoop-rpc"))
            (hsPkgs."protobuf" or (errorHandler.buildDepError "protobuf"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if flags.travis then false else true;
        };
      };
    };
  }