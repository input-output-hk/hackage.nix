{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xml-extractors";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "holmisen@gmail.com";
        author = "Johan Holmquist";
        homepage = "https://github.com/holmisen/xml-extractors";
        url = "";
        synopsis = "Simple wrapper over xml (Text.XML.Light) to extract data from parsed xml";
        description = "This is a library to make it easier to extract data from parsed xml.\n\nSee the 'Text.XML.Light.Extractors' module for an example.\n\n= Motivation\n\nThe xml package provides functions to parse and get information\nfrom xml data. You can parse an xml string into a generic xml tree\nrepresentation. Then to extract information from that tree and into\nyou own data types you can use this library.\n\nIf there is an error during extraction (expected information is\nabsent or wrong), you will get an error value with position information.\n\n= Some limitations\n\n* Only handles unqualified names, so far.\n\n* No column or line number reference in error values.";
        buildType = "Simple";
      };
      components = {
        xml-extractors = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.safe
          ];
        };
      };
    }