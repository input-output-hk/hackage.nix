{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "libxml-sax";
          version = "0.6.0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "http://ianen.org/haskell/bindings/libxml-sax/";
        url = "";
        synopsis = "Bindings for the libXML2 SAX interface";
        description = "";
        buildType = "Simple";
      };
      components = {
        libxml-sax = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.xml-types
          ];
          libs = [ pkgs.xml2 ];
        };
      };
    }