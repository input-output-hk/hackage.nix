{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "zeromq4-haskell";
        version = "0.2";
      };
      license = "MIT";
      copyright = "Copyright (c) 2010 - 2014 zeromq-haskell authors";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
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
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.ansi-terminal)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.checkers)
            (hsPkgs.containers)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }