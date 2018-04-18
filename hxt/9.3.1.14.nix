{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      network-uri = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hxt";
          version = "9.3.1.14";
        };
        license = "MIT";
        copyright = "Copyright (c) 2005-2015 Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Uwe Schmidt, Martin Schmidt, Torben Kuseler";
        homepage = "https://github.com/UweSchmidt/hxt";
        url = "";
        synopsis = "A collection of tools for processing XML with Haskell.";
        description = "The Haskell XML Toolbox bases on the ideas of HaXml and HXML,\nbut introduces a more general approach for processing XML with Haskell.\nThe Haskell XML Toolbox uses a generic data model for representing XML documents,\nincluding the DTD subset and the document subset, in Haskell.\nIt contains a validating XML parser, a HTML parser, namespace support,\nan XPath expression evaluator, an XSLT library, a RelaxNG schema validator\nand funtions for serialization and deserialization of user defined data.\nThe library makes extensive use of the arrow approach for processing XML.\nSince version 9 the toolbox is partitioned into various (sub-)packages.\nThis package contains the core functionality,\nhxt-curl, hxt-tagsoup, hxt-relaxng, hxt-xpath, hxt-xslt,\nhxt-regex-xmlschema contain the extensions.\nhxt-unicode contains encoding and decoding functions,\nhxt-charproperties char properties for unicode and XML.\n\nChanges from 9.3.1.13: ghc-7.10 compatibility\n\nChanges from 9.3.1.12: Bug when unpickling an empty attribute value removed\n\nChanges from 9.3.1.11: Bug fix in haddock comments\n\nChanges from 9.3.1.10: Bug in DTD validation, space and time leak in delta removed\n\nChanges from 9.3.1.9: lower bound of mtl dependency lowered to 2.0.1\n\nChanges from 9.3.1.8: Bug in hread removed\n\nChanges from 9.3.1.7: Foldable and Traversable instances for NTree added\nControl.Except used instead of deprecated Control.Error\n\nChanges from 9.3.1.6: canonicalize added in hread and hreadDoc\n\nChanges from 9.3.1.4: conditionally (no default)\ndependency from networt changed to network-uri with flag \"network-uri\"\n\nChanges from 9.3.1.3: warnings from ghc-7.8.1 removed\n\nChanges from 9.3.1.2: https as protocol added\n\nChanges from 9.3.1.1: new parser xreadDoc\n\nChanges from 9.3.1.0: in readString all input decoding switched off\n\nChanges from 9.3.0.1: lower bound for network set to be >= 2.4\n\nChanges from 9.3.0: upper bound for network set to be < 2.4\n(URI signatures changed in 2.4)\n\nChanges from 9.2.2: XMLSchema validation integrated\n\nChanges from 9.2.1: user defined mime type handlers added\n\nChanges from 9.2.0: New warnings from ghc-7.4 removed";
        buildType = "Simple";
      };
      components = {
        hxt = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.HUnit
            hsPkgs.mtl
            hsPkgs.deepseq
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.hxt-charproperties
            hsPkgs.hxt-unicode
            hsPkgs.hxt-regex-xmlschema
          ] ++ (if _flags.network-uri
            then [ hsPkgs.network-uri ]
            else [ hsPkgs.network ]);
        };
      };
    }