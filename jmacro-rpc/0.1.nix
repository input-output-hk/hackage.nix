{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "jmacro-rpc";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gershomb@gmail.com";
        author = "Gershom Bazerman";
        homepage = "http://patch-tag.com/r/gershomb/jmacro-rpc";
        url = "";
        synopsis = "JSON-RPC clients and servers using JMacro.";
        description = "Base jmacro-rpc package. Provides server-idependent functions.";
        buildType = "Simple";
      };
      components = {
        jmacro-rpc = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.jmacro
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.attoparsec
            hsPkgs.aeson
            hsPkgs.mtl
            hsPkgs.unordered-containers
          ];
        };
      };
    }