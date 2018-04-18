{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "memcache";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 David Terei.";
        maintainer = "David Terei <code@davidterei.com>";
        author = "David Terei <code@davidterei.com>";
        homepage = "https://github.com/dterei/memcache-hs";
        url = "";
        synopsis = "A memcached client library.";
        description = "A client library for a memcached cluster. Memcached is an in-memory key-value\nstore typically used as a distributed and shared cache. Clients connect to a\ngroup of memcached servers and perform out-of-band caching for things like\nSQL results, rendered pages, or third-party APIs.\n\nIt supports the binary memcached protocol and SASL authentication. No support\nfor the ASCII protocol is provided. It supports connecting to a single, or a\ncluster of memcached servers. When connecting to a cluser, consistent hashing\nis used for routing requests to the appropriate server. Timeouts, retrying\nfailed operations, and failover to a different server are all supported.\n\nComplete coverage of the memcached protocol is provided except for multi-get\nand other pipelined operations.\n\nBasic usage is:\n\n> import qualified Database.Memcache.Client as M\n>\n> mc <- M.newClient [M.ServerSpec \"localhost\" 11211 M.NoAuth] M.def\n> M.set mc \"key\" \"value\" 0 0\n> v <- M.get mc \"key\"\n\nYou should only need to import 'Database.Memcache.Client', but for now other\nmodules are exposed.";
        buildType = "Simple";
      };
      components = {
        memcache = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.data-default-class
            hsPkgs.hashable
            hsPkgs.network
            hsPkgs.resource-pool
            hsPkgs.vector
            hsPkgs.time
          ];
        };
        tests = {
          full = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.memcache
              hsPkgs.network
            ];
          };
        };
        benchmarks = {
          parser = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.memcache
            ];
          };
        };
      };
    }