{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "BerkeleyDBXML"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "http://www.haskell.org/haskellwiki/BerkeleyDBXML";
      url = "";
      synopsis = "Berkeley DB and Berkeley DB XML binding";
      description = "Berkeley DB XML is a powerful, fully transactional, XML-based database that uses\nXQuery as its query language.  Berkeley DB XML is built on top of Berkeley DB.\nIt is NOT an SQL database.\n\nThis package provides a 70% complete Haskell binding for Berkeley DB and Berkeley\nDB XML.  It is also possible to compile for Berkeley DB only.\n\nBerkeley DB XML home page:\n<http://www.oracle.com/database/berkeley-db/xml/index.html>\n\nHaskell binding tutorial:\n<http://www.haskell.org/haskellwiki/BerkeleyDBXML>\n\nDARCS repository:\n<http://blacksapphire.com/BerkeleyDBXML/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."db" or (errorHandler.sysDepError "db"))
          (pkgs."dbxml" or (errorHandler.sysDepError "dbxml"))
          (pkgs."db_cxx" or (errorHandler.sysDepError "db_cxx"))
          (pkgs."xqilla" or (errorHandler.sysDepError "xqilla"))
          (pkgs."xerces-c" or (errorHandler.sysDepError "xerces-c"))
          (pkgs."xml2" or (errorHandler.sysDepError "xml2"))
        ];
        buildable = true;
      };
    };
  }