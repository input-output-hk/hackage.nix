{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hxt";
          version = "7.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2005 Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "";
        homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
        url = "";
        synopsis = "A collection of tools for processing XML with Haskell.";
        description = "The Haskell XML Toolbox bases on the ideas of HaXml and HXML, but introduces a more general approach for processing XML with Haskell. The Haskell XML Toolbox uses a generic data model for representing XML documents, including the DTD subset and the document subset, in Haskell. This data model makes it possible to use filter functions as a uniform design of XML processing applications. The whole XML parser including the validator parts was implemented using this design. Libraries with filters and combinators are provided for processing the generic data model.";
        buildType = "Custom";
      };
      components = {
        "hxt" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.parsec
            hsPkgs.HTTP
            hsPkgs.HUnit
            hsPkgs.network
          ];
        };
      };
    }