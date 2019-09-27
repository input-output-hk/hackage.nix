let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."BerkeleyDB" or (buildDepError "BerkeleyDB"))
          ];
        libs = [
          (pkgs."db" or (sysDepError "db"))
          (pkgs."dbxml" or (sysDepError "dbxml"))
          (pkgs."xqilla" or (sysDepError "xqilla"))
          (pkgs."xerces-c" or (sysDepError "xerces-c"))
          (pkgs."stdc++" or (sysDepError "stdc++"))
          ];
        buildable = true;
        };
      };
    }