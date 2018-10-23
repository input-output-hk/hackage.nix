{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hxt";
        version = "9.3.1.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2005-2012 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt, Martin Schmidt, Torben Kuseler";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "A collection of tools for processing XML with Haskell.";
      description = "The Haskell XML Toolbox bases on the ideas of HaXml and HXML,\nbut introduces a more general approach for processing XML with Haskell.\nThe Haskell XML Toolbox uses a generic data model for representing XML documents,\nincluding the DTD subset and the document subset, in Haskell.\nIt contains a validating XML parser, a HTML parser, namespace support,\nan XPath expression evaluator, an XSLT library, a RelaxNG schema validator\nand funtions for serialization and deserialization of user defined data.\nThe library makes extensive use of the arrow approach for processing XML.\nSince version 9 the toolbox is partitioned into various (sub-)packages.\nThis package contains the core functionality,\nhxt-curl, hxt-tagsoup, hxt-relaxng, hxt-xpath, hxt-xslt, hxt-regex-xmlschema contain the extensions.\nhxt-unicode contains encoding and decoding functions,\nhxt-charproperties char properties for unicode and XML.\n\nChanges from 9.3.0.1: lower bound for network set to be >= 2.4\n\nChanges from 9.3.0: upper bound for network set to be < 2.4 (URI signatures changed in 2.4)\n\nChanges from 9.2.2: XMLSchema validation integrated\n\nChanges from 9.2.1: user defined mime type handlers added\n\nChanges from 9.2.0: New warnings from ghc-7.4 removed";
      buildType = "Simple";
    };
    components = {
      "hxt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.deepseq)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.hxt-charproperties)
          (hsPkgs.hxt-unicode)
          (hsPkgs.hxt-regex-xmlschema)
        ];
      };
    };
  }