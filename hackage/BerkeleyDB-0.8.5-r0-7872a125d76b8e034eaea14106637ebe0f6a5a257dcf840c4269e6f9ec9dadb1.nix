{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "BerkeleyDB"; version = "0.8.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Stephen Blackheath, (c) 2010 typLAB";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath, Erik Hesselink <erik@typlab.com>";
      homepage = "http://www.haskell.org/haskellwiki/BerkeleyDBXML";
      url = "";
      synopsis = "Berkeley DB binding";
      description = "This package provides a Haskell binding for Berkeley DB, which is a fast, scalable,\nfully transactional database that runs on a local file system, and functions as a\ndictionary of arbitrary-sized binary blobs.  It is NOT an SQL-based database.  It\nis not free for commercial use.\n\nThis is a work in progress: The coverage of the Berkeley DB API is not yet complete. Tested with\nBerkeley DB versions 4.7 and 4.8, but should work with earlier versions.\n\nBerkeley DB home page:\n<http://www.oracle.com/database/berkeley-db/index.html>\n\nHaskell binding tutorial:\n<http://www.haskell.org/haskellwiki/BerkeleyDBXML>\n\nDARCS repository:\n<http://code.haskell.org/BerkeleyDB/>\n\nChanges: 0.8:   Support db4.7 and db4.8, removed C++ binding.\n0.8.5: Add db_sync.\n0.7.2: Fix on db4.7\n\nContributors: Michael Stone";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.bytestring)
          ];
        libs = [ (pkgs."db") ];
        };
      };
    }