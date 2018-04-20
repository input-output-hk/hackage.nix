{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "BerkeleyDBXML";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Stephen Blackheath";
        maintainer = "http://blacksapphire.com/antispam/";
        author = "Stephen Blackheath";
        homepage = "http://www.haskell.org/haskellwiki/BerkeleyDBXML";
        url = "";
        synopsis = "Berkeley DB XML binding";
        description = "Berkeley DB XML is a powerful, fully transactional, XML-based database that uses\nXQuery as its query language.  Berkeley DB XML is built on top of Berkeley DB.\nIt is NOT an SQL database.\n\nBerkeley DB XML home page:\n<http://www.oracle.com/database/berkeley-db/xml/index.html>\n\nHaskell binding tutorial:\n<http://www.haskell.org/haskellwiki/BerkeleyDBXML>\n\nDARCS repository:\n<http://blacksapphire.com/BerkeleyDBXML/>";
        buildType = "Simple";
      };
      components = {
        BerkeleyDBXML = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.BerkeleyDB
          ];
          libs = [
            pkgs.db
            pkgs.dbxml
            pkgs.db_cxx
            pkgs.xqilla
            pkgs.xerces-c
            pkgs.xml2
          ];
        };
      };
    }