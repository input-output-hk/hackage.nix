{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      cxx = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.4";
      identifier = {
        name = "BerkeleyDB";
        version = "0.7.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "http://www.haskell.org/haskellwiki/BerkeleyDBXML";
      url = "";
      synopsis = "Berkeley DB binding";
      description = "Berkeley DB is a fast, scalable, fully transactional database that runs on a local file\nsystem, and functions as a dictionary of arbitrary-sized binary blobs.\n(It is NOT an SQL-based database.)  This package provides a thin Haskell binding for Berkeley DB.\n\nThis is a work in progress: The coverage of the Berkeley DB API is not yet complete. Tested with\nBerkeley DB version 4.6.\n\n/CXX flag/ (enabled by default):\nOn some platforms, BerkeleyDB won't load into ghci if the CXX flag is enabled.\nThe CXX flag is required if you want to use the BerkeleyDBXML package.\nYou are recommended to disable this flag if you are not using BerkeleyDBXML.\nTo disable it, configure with --flags=-CXX.\n\nBerkeley DB home page:\n<http://www.oracle.com/database/berkeley-db/index.html>\n\nHaskell binding tutorial:\n<http://www.haskell.org/haskellwiki/BerkeleyDBXML>\n\nDARCS repository:\n<http://code.haskell.org/BerkeleyDB/>\n\nChanges: 0.7.2: Fix on db4.7";
      buildType = "Simple";
    };
    components = {
      "BerkeleyDB" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.bytestring)
        ];
        libs = if _flags.cxx
          then [ (pkgs.db) (pkgs.db_cxx) ]
          else [ (pkgs.db) ];
      };
    };
  }