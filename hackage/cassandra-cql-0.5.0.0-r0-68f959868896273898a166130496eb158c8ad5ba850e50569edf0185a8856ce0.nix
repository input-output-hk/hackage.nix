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
        name = "cassandra-cql";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath 2013-2015";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Haskell client for Cassandra's CQL protocol";
      description = "Haskell client for Cassandra's CQL protocol\n\nReivision history:\n\n* 0.5.0.0 Upgrade to CQL Binary Protocol v2. Support Cassandra Lightweight transactions.\n* 0.4.0.1 Add PasswordAuthenticator (thanks Curtis Carter) & accept ghc-7.8\n* 0.3.0.1 Fix socket issue on Mac.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.stm)
          (hsPkgs.uuid)
          (hsPkgs.time)
          (hsPkgs.Decimal)
          (hsPkgs.resource-pool)
          (hsPkgs.hslogger)
        ];
      };
    };
  }