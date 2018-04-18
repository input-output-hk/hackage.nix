{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "libxml-enumerator";
          version = "0.3";
        };
        license = "MIT";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Enumerator-based API for libXML's SAX interface";
        description = "";
        buildType = "Simple";
      };
      components = {
        libxml-enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.enumerator
            hsPkgs.transformers
            hsPkgs.libxml-sax
            hsPkgs.xml-types
          ];
        };
      };
    }