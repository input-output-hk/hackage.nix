{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "cassandra-thrift";
          version = "0.7.2.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "kirk@glyphsoftware.com";
        author = "Thrift v.0.5.0";
        homepage = "http://cassandra.apache.org/";
        url = "";
        synopsis = "thrift bindings to the cassandra database";
        description = "The Cassandra (v.0.7.2) database bindings, generated using the Thrift (v.0.5.0) compliler, Released under the Apache 2.0 license.";
        buildType = "Simple";
      };
      components = {
        cassandra-thrift = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.Thrift
            hsPkgs.bytestring
          ];
        };
      };
    }