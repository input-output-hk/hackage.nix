{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "BerkeleyDB";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Stephen Blackheath";
        maintainer = "http://blacksapphire.com/antispam/";
        author = "Stephen Blackheath";
        homepage = "http://www.haskell.org/haskellwiki/BerkeleyDBXML";
        url = "";
        synopsis = "Berkeley DB binding";
        description = "Berkeley DB is a fast, scalable, fully transactional database that runs on a local file\nsystem, and functions as a dictionary of arbitrary-sized binary blobs.\n(It is NOT an SQL-based database.)  This package provides a thin Haskell binding for Berkeley DB.\n\nThis is a work in progress: The coverage of the Berkeley DB API is not yet complete. Tested with\nBerkeley DB version 4.6.\n\nBerkeley DB home page:\n<http://www.oracle.com/database/berkeley-db/index.html>\n\nHaskell binding tutorial:\n<http://www.haskell.org/haskellwiki/BerkeleyDBXML>\n\nDARCS repository:\n<http://blacksapphire.com/BerkeleyDB>";
        buildType = "Simple";
      };
      components = {
        BerkeleyDB = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [ pkgs.db pkgs.db_cxx ];
        };
      };
    }