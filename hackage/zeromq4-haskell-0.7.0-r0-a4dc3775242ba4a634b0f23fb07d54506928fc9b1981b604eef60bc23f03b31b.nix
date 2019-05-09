{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "zeromq4-haskell"; version = "0.7.0"; };
      license = "MIT";
      copyright = "(c) 2010 - 2015 zeromq-haskell authors";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "https://gitlab.com/twittner/zeromq-haskell/";
      url = "";
      synopsis = "Bindings to ZeroMQ 4.x";
      description = "The 0MQ lightweight messaging kernel is a library which extends\nthe standard socket interfaces with features traditionally provided\nby specialised messaging middleware products.\n\n0MQ sockets provide an abstraction of asynchronous message queues,\nmultiple messaging patterns, message filtering (subscriptions),\nseamless access to multiple transport protocols and more.\n\nThis library provides the Haskell language binding to 0MQ >= 4.x";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim);
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."zmq") ++ (pkgs.lib).optional (system.isFreebsd) (pkgs."pthread");
        pkgconfig = (pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libzmq");
        };
      tests = {
        "zeromq-haskell-tests" = {
          depends = [
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }