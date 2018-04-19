{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "Thrift";
          version = "0.5.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "thrift-user-subscribe@incubator.apache.org";
        author = "";
        homepage = "http://incubator.apache.org/thrift";
        url = "";
        synopsis = "Thrift library package";
        description = "The Thrift Haskell package that shipped with Thrift v.0.5.0, released under the Apache 2.0 license.\nThrift-0.5.0.1 adds a missing Framed Transport implementation, which Cassandra now depends on.\nFor more information see: https://issues.apache.org/jira/browse/THRIFT-538.";
        buildType = "Simple";
      };
      components = {
        Thrift = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.ghc-prim
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.HTTP
          ];
        };
      };
    }