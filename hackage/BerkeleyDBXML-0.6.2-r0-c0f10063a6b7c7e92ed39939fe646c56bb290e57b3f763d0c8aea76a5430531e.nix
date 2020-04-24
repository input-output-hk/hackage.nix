{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "BerkeleyDBXML"; version = "0.6.2"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."BerkeleyDB" or ((hsPkgs.pkgs-errors).buildDepError "BerkeleyDB"))
          ];
        libs = [
          (pkgs."db" or ((hsPkgs.pkgs-errors).sysDepError "db"))
          (pkgs."dbxml" or ((hsPkgs.pkgs-errors).sysDepError "dbxml"))
          (pkgs."db_cxx" or ((hsPkgs.pkgs-errors).sysDepError "db_cxx"))
          (pkgs."xqilla" or ((hsPkgs.pkgs-errors).sysDepError "xqilla"))
          (pkgs."xerces-c" or ((hsPkgs.pkgs-errors).sysDepError "xerces-c"))
          (pkgs."xml2" or ((hsPkgs.pkgs-errors).sysDepError "xml2"))
          ];
        buildable = true;
        };
      };
    }