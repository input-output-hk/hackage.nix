{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "memcache";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 David Terei.";
        maintainer = "David Terei <code@davidterei.com>";
        author = "David Terei <code@davidterei.com>";
        homepage = "https://github.com/dterei/memcache-hs";
        url = "";
        synopsis = "A memcached client library.";
        description = "A client library for a memcached cluster.\n\nIt supports the binary memcached protocol and SASL authentication. No support\nfor the ASCII protocol is provided. It supports connecting to a single, or a\ncluster of memcached servers. When connecting to a cluser, consistent hashing\nis used for routing requests to the appropriate server.\n\nComplete coverage of the memcached protocol is provided except for multi-get\nand other pipelined operations.\n\nBasic usage is:\n\n> import qualified Database.Memcache.Client as M\n>\n> mc <- M.newClient [M.ServerSpec \"localhost\" 11211 M.NoAuth] M.defaultOptions\n> M.set mc \"key\" \"value\" 0 0\n> v <- M.get mc \"key\"\n\nYou should only need to import 'Database.Memcache.Client', but for now other\nmodules are exposed.";
        buildType = "Simple";
      };
      components = {
        "memcache" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.network
            hsPkgs.resource-pool
            hsPkgs.vector
            hsPkgs.vector-algorithms
            hsPkgs.time
          ];
        };
        tests = {
          "full" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.memcache
            ];
          };
        };
        benchmarks = {
          "parser" = {
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