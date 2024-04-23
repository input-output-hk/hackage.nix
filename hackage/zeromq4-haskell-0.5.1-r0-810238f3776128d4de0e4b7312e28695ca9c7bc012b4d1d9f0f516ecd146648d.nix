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
      specVersion = "1.8";
      identifier = { name = "zeromq4-haskell"; version = "0.5.1"; };
      license = "MIT";
      copyright = "(c) 2010 - 2014 zeromq-haskell authors";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "http://github.com/twittner/zeromq-haskell/";
      url = "";
      synopsis = "Bindings to ZeroMQ 4.x";
      description = "The 0MQ lightweight messaging kernel is a library which extends\nthe standard socket interfaces with features traditionally provided\nby specialised messaging middleware products.\n\n0MQ sockets provide an abstraction of asynchronous message queues,\nmultiple messaging patterns, message filtering (subscriptions),\nseamless access to multiple transport protocols and more.\n\nThis library provides the Haskell language binding to 0MQ >= 4.x";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        libs = pkgs.lib.optional (system.isWindows) (pkgs."zmq" or (errorHandler.sysDepError "zmq")) ++ pkgs.lib.optional (system.isFreebsd) (pkgs."pthread" or (errorHandler.sysDepError "pthread"));
        pkgconfig = pkgs.lib.optional (!system.isWindows) (pkgconfPkgs."libzmq" or (errorHandler.pkgConfDepError "libzmq"));
        buildable = true;
      };
      tests = {
        "zeromq-haskell-tests" = {
          depends = [
            (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }