{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cql-io";
          version = "0.15.2";
        };
        license = "MPL-2.0";
        copyright = "(C) 2014-2016 Toralf Wittner";
        maintainer = "Toralf Wittner <tw@dtex.org>";
        author = "Toralf Wittner";
        homepage = "https://github.com/twittner/cql-io/";
        url = "";
        synopsis = "Cassandra CQL client.";
        description = "CQL Cassandra driver supporting native protocol versions 2 and 3.\n\nThis library uses the <http://hackage.haskell.org/package/cql cql> library\nwhich implements Cassandra's CQL protocol and complements it with the\nneccessary I/O operations. The feature-set includes:\n\n* /Node discovery/. The driver discovers nodes automatically from a small\nset of bootstrap nodes.\n\n* /Customisable load-balancing policies/. In addition to pre-built LB\npolicies such as round-robin, users of this library can provide their\nown policies if desired.\n\n* /Support for connection streams/. Requests can be multiplexed over a\nfew connections.\n\n* /Customisable retry settings/. Support for default retry settings as well\nas local overrides per query.\n\n* /Prepared queries/. Prepared queries are an optimisation which parse\nand prepare a query only once on Cassandra nodes but execute it many\ntimes with different concrete values.\n\n* /TLS support/. Client to node communication can optionally use transport\nlayer security (using HsOpenSSL).";
        buildType = "Simple";
      };
      components = {
        cql-io = {
          depends  = [
            hsPkgs.async
            hsPkgs.auto-update
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cql
            hsPkgs.cryptohash
            hsPkgs.data-default-class
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.iproute
            hsPkgs.HsOpenSSL
            hsPkgs.lens
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.mwc-random
            hsPkgs.retry
            hsPkgs.network
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.tinylog
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.uuid
            hsPkgs.vector
          ];
        };
      };
    }