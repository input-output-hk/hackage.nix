{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "htsn-import";
          version = "0.1.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Michael Orlitzky <michael@orlitzky.com>";
        author = "Michael Orlitzky";
        homepage = "";
        url = "";
        synopsis = "Import XML files from The Sports Network into an RDBMS.";
        description = "/Usage/:\n\n@\nhtsn-import [OPTIONS] [FILES]\n@\n\nThe Sports Network <http://www.sportsnetwork.com/> offers an XML feed\ncontaining various sports news and statistics. Our sister program\n/htsn/ is capable of retrieving the feed and saving the individual\nXML documents contained therein. But what to do with them?\n\nThe purpose of /htsn-import/ is to take these XML documents and\nget them into something we can use, a relational database management\nsystem (RDBMS), i.e. \\\"a SQL database\\\". The structure of\nrelational database, is, well, relational, and the feed XML is not. So\nthere is some work to do before the data can be inserted.\n\nFirst, we must parse the XML. Each supported document type (see below)\nhas a full pickle/unpickle implementation (\\\"pickle\\\" is simply a\nsynonym for serialize here). That means that we parse the entire\ndocument into a data structure, and if we pickle (serialize) that data\nstructure, we get the exact same XML document tha we started with.\n\nThis is important for two reasons. First, it serves as a second level\nof validation. The first validation is performed by the XML parser,\nbut if that succeeds and unpicking fails, we know that something is\nfishy. Second, we don't ever want to be surprised by some new element\nor attribute showing up in the XML. The fact that we can unpickle the\nwhole thing now means that we won't be surprised in the future.\n\nThe aforementioned feature is especially important because we\nautomatically migrate the database schema every time we import a\ndocument. If you attempt to import a \\\"newsxml.dtd\\\" document, all\ndatabase objects relating to the news will be created if they do not\nexist. We don't want the schema to change out from under us without\nwarning, so it's important that no XML be parsed that would result in\na different schema than we had previously. Since we can\npickle/unpickle everything already, this should be impossible.\n\nExamples and usage documentation are available in the man page.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "htsn-import" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.configurator
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hslogger
              hsPkgs.htsn-common
              hsPkgs.hxt
              hsPkgs.groundhog
              hsPkgs.groundhog-postgresql
              hsPkgs.groundhog-sqlite
              hsPkgs.groundhog-th
              hsPkgs.MissingH
              hsPkgs.old-locale
              hsPkgs.split
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.tuple
            ];
          };
        };
        tests = {
          "testsuite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.configurator
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hslogger
              hsPkgs.htsn-common
              hsPkgs.hxt
              hsPkgs.groundhog
              hsPkgs.groundhog-postgresql
              hsPkgs.groundhog-sqlite
              hsPkgs.groundhog-th
              hsPkgs.MissingH
              hsPkgs.old-locale
              hsPkgs.split
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.tuple
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          "shelltests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.configurator
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hslogger
              hsPkgs.htsn-common
              hsPkgs.hxt
              hsPkgs.groundhog
              hsPkgs.groundhog-postgresql
              hsPkgs.groundhog-sqlite
              hsPkgs.groundhog-th
              hsPkgs.MissingH
              hsPkgs.old-locale
              hsPkgs.split
              hsPkgs.process
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.tuple
            ];
          };
        };
      };
    }