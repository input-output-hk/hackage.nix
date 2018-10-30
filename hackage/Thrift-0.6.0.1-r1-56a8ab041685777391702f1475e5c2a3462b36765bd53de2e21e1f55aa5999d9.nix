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
      specVersion = "1.4";
      identifier = {
        name = "Thrift";
        version = "0.6.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "dev@thrift.apache.org";
      author = "";
      homepage = "http://thrift.apache.org";
      url = "";
      synopsis = "Haskell bindings for the Apache Thrift RPC system";
      description = "Haskell bindings for the Apache Thrift RPC system. Requires the use of the thrift code generator.\nIncludes backported Framed Transport implementation, which Cassandra now uses by default[1].\n\nNOTE: this package will be eventually deprecated, replaced by Christian Lavoie's thrift package[2],\nonce Framed Transport support that is in Thrift's svn trunk (and backported here) is included there.\n\n\n[1] <https://issues.apache.org/jira/browse/THRIFT-538>\n\n[2] <http://hackage.haskell.org/package/thrift>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.ghc-prim)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.HTTP)
        ];
      };
    };
  }