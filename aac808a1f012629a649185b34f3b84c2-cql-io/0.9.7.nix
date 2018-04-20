{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cql-io";
          version = "0.9.7";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2014 Toralf Wittner";
        maintainer = "Toralf Wittner <tw@dtex.org>";
        author = "Toralf Wittner";
        homepage = "https://github.com/twittner/cql-io/";
        url = "";
        synopsis = "Cassandra CQL client.";
        description = "CQL Cassandra driver supporting native protocol versions 2 and 3.\n\nThis library uses the <http://hackage.haskell.org/package/cql cql> library\nwhich implements Cassandra's CQL protocol and complements it with the\nneccessary I/O operations. The feature-set includes:\n\n* __Node discovery__. The driver discovers nodes automatically from a small\nset of bootstrap nodes.\n\n* __Customisable load-balancing policies__. In addition to pre-built LB\npolicies such as round-robin, users of this library can provide their\nown policies if desired.\n\n* __Support for connection streams__. Requests can be multiplexed over a\nfew connections.";
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
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.iproute
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.mwc-random
            hsPkgs.network
            hsPkgs.retry
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.tinylog
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.uuid
            hsPkgs.vector
          ];
        };
      };
    }