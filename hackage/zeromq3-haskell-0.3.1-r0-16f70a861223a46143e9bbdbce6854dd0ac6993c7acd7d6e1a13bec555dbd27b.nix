{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "zeromq3-haskell";
        version = "0.3.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2010 - 2013 zeromq-haskell authors";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "http://github.com/twittner/zeromq-haskell/";
      url = "";
      synopsis = "Bindings to ZeroMQ 3.x";
      description = "The 0MQ lightweight messaging kernel is a library which extends\nthe standard socket interfaces with features traditionally provided\nby specialised messaging middleware products. 0MQ sockets provide\nan abstraction of asynchronous message queues, multiple messaging\npatterns, message filtering (subscriptions), seamless access to\nmultiple transport protocols and more.\nThis library provides the Haskell language binding to 0MQ >= 3.2.2";
      buildType = "Simple";
    };
    components = {
      "zeromq3-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.MonadCatchIO-transformers)
        ];
        libs = if system.isFreebsd
          then [
            (pkgs."zmq")
            (pkgs."pthread")
          ]
          else [ (pkgs."zmq") ];
      };
      tests = {
        "zeromq-haskell-tests" = {
          depends  = [
            (hsPkgs.zeromq3-haskell)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.checkers)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }