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
        name = "cassandra-cql";
        version = "0.2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath 2013";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Haskell client for Cassandra's CQL protocol";
      description = "Haskell client for Cassandra's CQL protocol";
      buildType = "Simple";
    };
    components = {
      "cassandra-cql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.MonadCatchIO-mtl)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.stm)
          (hsPkgs.uuid)
          (hsPkgs.time)
          (hsPkgs.Decimal)
        ];
      };
    };
  }