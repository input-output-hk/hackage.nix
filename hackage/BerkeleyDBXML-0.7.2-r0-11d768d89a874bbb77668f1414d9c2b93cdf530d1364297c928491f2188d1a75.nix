{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "BerkeleyDBXML"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Stephen Blackheath, (c) 2010 typLAB";
      maintainer = "http://blacksapphire.com/antispam/, typLAB <code@typlab.com>";
      author = "Stephen Blackheath, Erik Hesselink <erik@typlab.com>";
      homepage = "http://www.haskell.org/haskellwiki/BerkeleyDBXML";
      url = "";
      synopsis = "Berkeley DB XML binding";
      description = "This package is a Haskell binding for Berkeley DB XML, which is a powerful,\nfully transactional, XML-based database written in C++ that uses XQuery as its\nquery language.  It is NOT an SQL database.  It is not free for commercial use.\n\nThe binding is only about 70% complete, but it should allow you to write a fairly\nserious application.  If you would like a particular part of the API added,\nplease contact me.\n\nIf Berkeley DB or DB XML is not installed in the default location of /usr or\n/usr/local, you will need to specify the paths in this way:\n\n> cabal install BerkeleyDBXML \\\n>    --extra-include-dirs=/usr/local/dbxml-2.5.16/include/ \\\n>    --extra-include-dirs=/usr/local/dbxml-2.5.16/include/dbxml/ \\\n>    --extra-lib-dirs=/usr/local/dbxml-2.5.16/lib/\n\nSee the examples/ directory for examples.\n\nBerkeley DB XML home page:\n<http://www.oracle.com/database/berkeley-db/xml/index.html>\n\nHaskell binding tutorial:\n<http://www.haskell.org/haskellwiki/BerkeleyDBXML>\n\nDARCS repository:\n<http://code.haskell.org/BerkeleyDBXML/>\n\nChanges: 0.7: Compatible (only) with dbxml 2.5.";
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
          (pkgs."xqilla" or ((hsPkgs.pkgs-errors).sysDepError "xqilla"))
          (pkgs."xerces-c" or ((hsPkgs.pkgs-errors).sysDepError "xerces-c"))
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      };
    }