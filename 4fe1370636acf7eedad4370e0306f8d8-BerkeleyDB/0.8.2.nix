{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "BerkeleyDB";
          version = "0.8.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Stephen Blackheath, (c) 2010 typLAB";
        maintainer = "http://blacksapphire.com/antispam/, typLAB <code@typlab.com>";
        author = "Stephen Blackheath, Erik Hesselink <erik@typlab.com>";
        homepage = "http://www.haskell.org/haskellwiki/BerkeleyDBXML";
        url = "";
        synopsis = "Berkeley DB binding";
        description = "Berkeley DB is a fast, scalable, fully transactional database that runs on a local file\nsystem, and functions as a dictionary of arbitrary-sized binary blobs.\n(It is NOT an SQL-based database.)  This package provides a thin Haskell binding for Berkeley DB.\n\nThis is a work in progress: The coverage of the Berkeley DB API is not yet complete. Tested with\nBerkeley DB versions 4.7 and 4.8, but should work with earlier versions.\n\nBerkeley DB home page:\n<http://www.oracle.com/database/berkeley-db/index.html>\n\nHaskell binding tutorial:\n<http://www.haskell.org/haskellwiki/BerkeleyDBXML>\n\nDARCS repository:\n<http://code.haskell.org/BerkeleyDB/>\n\nChanges: 0.8:   Support db4.7 and db4.8, removed C++ binding.\n0.7.2: Fix on db4.7";
        buildType = "Simple";
      };
      components = {
        BerkeleyDB = {
          depends  = [
            hsPkgs.base
            hsPkgs.extensible-exceptions
            hsPkgs.bytestring
          ];
          libs = [ pkgs.db ];
        };
      };
    }