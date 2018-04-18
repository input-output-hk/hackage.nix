{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "thrift";
          version = "0.9.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "dev@thrift.apache.org";
        author = "";
        homepage = "http://thrift.apache.org";
        url = "";
        synopsis = "Haskell bindings for the Apache Thrift RPC system";
        description = "Haskell bindings for the Apache Thrift RPC system. Requires the use of the thrift code generator.";
        buildType = "Simple";
      };
      components = {
        thrift = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.ghc-prim
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.HTTP
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.QuickCheck
            hsPkgs.split
          ] ++ (if _flags.network-uri
            then [
              hsPkgs.network-uri
              hsPkgs.network
            ]
            else [ hsPkgs.network ]);
        };
      };
    }