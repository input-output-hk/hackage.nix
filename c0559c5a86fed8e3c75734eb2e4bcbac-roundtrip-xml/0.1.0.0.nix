{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "roundtrip-xml";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Stefan Wehr <wehr@factisresearch.com>,";
        author = "Stefan Wehr <wehr@factisresearch.com>,\nDavid Leuschner <leuschner@factisresearch.com>";
        homepage = "";
        url = "";
        synopsis = "Bidirectional (de-)serialization for XML.";
        description = "Roundtrip allows the definition of bidirectional\n(de-)serialization specifications. This package provides\nconcrete implementations of these specifications\nfor the serialization format XML. See the roundtrip\npackage for more details.";
        buildType = "Simple";
      };
      components = {
        roundtrip-xml = {
          depends  = [
            hsPkgs.base
            hsPkgs.safe
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.enumerator
            hsPkgs.xml-enumerator
            hsPkgs.xml-types
            hsPkgs.blaze-builder
            hsPkgs.blaze-builder-enumerator
            hsPkgs.pretty
            hsPkgs.parsec
            hsPkgs.roundtrip
          ];
        };
      };
    }