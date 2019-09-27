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
      specVersion = "1.8";
      identifier = { name = "htsn-import"; version = "0.0.7"; };
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
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."htsn-common" or (buildDepError "htsn-common"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."groundhog" or (buildDepError "groundhog"))
            (hsPkgs."groundhog-postgresql" or (buildDepError "groundhog-postgresql"))
            (hsPkgs."groundhog-sqlite" or (buildDepError "groundhog-sqlite"))
            (hsPkgs."groundhog-th" or (buildDepError "groundhog-th"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."tuple" or (buildDepError "tuple"))
            ];
          buildable = true;
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."htsn-common" or (buildDepError "htsn-common"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."groundhog" or (buildDepError "groundhog"))
            (hsPkgs."groundhog-postgresql" or (buildDepError "groundhog-postgresql"))
            (hsPkgs."groundhog-sqlite" or (buildDepError "groundhog-sqlite"))
            (hsPkgs."groundhog-th" or (buildDepError "groundhog-th"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."tuple" or (buildDepError "tuple"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          buildable = true;
          };
        "shelltests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."htsn-common" or (buildDepError "htsn-common"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."groundhog" or (buildDepError "groundhog"))
            (hsPkgs."groundhog-postgresql" or (buildDepError "groundhog-postgresql"))
            (hsPkgs."groundhog-sqlite" or (buildDepError "groundhog-sqlite"))
            (hsPkgs."groundhog-th" or (buildDepError "groundhog-th"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."tuple" or (buildDepError "tuple"))
            ];
          buildable = true;
          };
        };
      };
    }