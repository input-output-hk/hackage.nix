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
      specVersion = "1.10";
      identifier = { name = "memcache"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 David Terei.";
      maintainer = "David Terei <code@davidterei.com>";
      author = "David Terei <code@davidterei.com>";
      homepage = "https://github.com/dterei/memcache-hs";
      url = "";
      synopsis = "A memcached client library.";
      description = "A client library for a Memcached cluster. Memcached is an in-memory key-value\nstore typically used as a distributed and shared cache. Clients connect to a\ngroup of Memcached servers and perform out-of-band caching for things like\nSQL results, rendered pages, or third-party APIs.\n\nIt supports the binary Memcached protocol and SASL authentication. No support\nfor the ASCII protocol is provided. It supports connecting to a single, or a\ncluster of Memcached servers. When connecting to a cluser, consistent hashing\nis used for routing requests to the appropriate server. Timeouts, retrying\nfailed operations, and failover to a different server are all supported.\n\nComplete coverage of the Memcached protocol is provided except for multi-get\nand other pipelined operations.\n\nBasic usage is:\n\n> import qualified Database.Memcache.Client as M\n>\n> mc <- M.newClient [M.ServerSpec \"localhost\" \"11211\" M.NoAuth] M.def\n> M.set mc \"key\" \"value\" 0 0\n> v <- M.get mc \"key\"\n\nYou should only need to import 'Database.Memcache.Client', but for now other\nmodules are exposed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "full" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."memcache" or (errorHandler.buildDepError "memcache"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."memcache" or (errorHandler.buildDepError "memcache"))
            ];
          buildable = true;
          };
        };
      };
    }