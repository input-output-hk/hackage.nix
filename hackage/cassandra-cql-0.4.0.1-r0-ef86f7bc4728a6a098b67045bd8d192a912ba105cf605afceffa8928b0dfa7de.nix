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
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath 2013-2014";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Haskell client for Cassandra's CQL protocol";
      description = "Haskell client for Cassandra's CQL protocol\n\nRevision history: 0.3.0.1 Fix socket issue on Mac.\n0.4.0.1 Add PasswordAuthenticator (thanks Curtis Carter) & accept ghc-7.8";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
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
        ];
      };
    };
  }