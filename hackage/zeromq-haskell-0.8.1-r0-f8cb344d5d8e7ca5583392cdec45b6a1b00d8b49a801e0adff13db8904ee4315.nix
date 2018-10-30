{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      zmq2 = true;
      zmq3 = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "zeromq-haskell";
        version = "0.8.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2011 zeromq-haskell authors";
      maintainer = "toralf.wittner@gmail.com";
      author = "Toralf Wittner";
      homepage = "http://github.com/twittner/zeromq-haskell/";
      url = "";
      synopsis = "bindings to zeromq";
      description = "The 0MQ lightweight messaging kernel is a library which extends\nthe standard socket interfaces with features traditionally provided\nby specialised messaging middleware products. 0MQ sockets provide\nan abstraction of asynchronous message queues, multiple messaging\npatterns, message filtering (subscriptions), seamless access to\nmultiple transport protocols and more.\nThis library provides the Haskell language binding to 0MQ and\nsupports 0MQ 2.x as well as 3.x (use -fzmq2 or -fzmq3 to select\nbetween the two).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
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
            (hsPkgs.zeromq-haskell)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }