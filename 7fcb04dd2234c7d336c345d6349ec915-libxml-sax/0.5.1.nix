{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "libxml-sax";
          version = "0.5.1";
        };
        license = "MIT";
        copyright = "John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "";
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
          pkgconfig = [
            pkgconfPkgs."libxml-2.0"
          ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }