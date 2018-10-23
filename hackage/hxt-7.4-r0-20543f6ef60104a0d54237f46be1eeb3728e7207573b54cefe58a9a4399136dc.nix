{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hxt";
        version = "7.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2005 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "A collection of tools for processing XML with Haskell.";
      description = "The Haskell XML Toolbox bases on the ideas of HaXml and HXML, but introduces a more general approach for processing XML with Haskell. The Haskell XML Toolbox uses a generic data model for representing XML documents, including the DTD subset and the document subset, in Haskell. It contains a validating XML parser, a HTML parser, namespace support, an XPath expression evaluator, an XSLT library, a RelaxNG schema validator and funtions for serialization and deserialization of user defined data. The libraray make extensive use of the arrow approach for processing XML.";
      buildType = "Simple";
    };
    components = {
      "hxt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.parsec)
          (hsPkgs.HTTP)
          (hsPkgs.HUnit)
          (hsPkgs.network)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }