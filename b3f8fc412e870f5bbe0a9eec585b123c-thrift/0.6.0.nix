{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "thrift";
          version = "0.6.0";
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
        "thrift" = {
          depends  = [
            hsPkgs.base
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