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
      specVersion = "1.10";
      identifier = { name = "dbmigrations"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
      author = "Jonathan Daugherty <cygnus@foobox.com>";
      homepage = "";
      url = "";
      synopsis = "An implementation of relational database \"migrations\"";
      description = "A library and program for the creation,\nmanagement, and installation of schema updates\n(called /migrations/) for a relational database. In\nparticular, this package lets the migration author\nexpress explicit dependencies between migrations\nand the management tool automatically installs or\nreverts migrations accordingly, using transactions\nfor safety.\nThis package is written to support a number of\ndifferent databases. For packages that support\nspecific databases using this library, see packages\nnamed \"dbmigrations-BACKEND\". Each package\nprovides an executable \"moo-BACKEND\" for managing\nmigrations. Usage information for the \"moo-\"\nexecutables can be found in \"MOO.TXT\" in this\npackage.\nThis package also includes a conformance test suite\nto ensure that backend implementations respect the\nlibrary's required semantics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."yaml-light" or (errorHandler.buildDepError "yaml-light"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
        buildable = true;
        };
      exes = {
        "moo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."dbmigrations" or (errorHandler.buildDepError "dbmigrations"))
            ];
          buildable = true;
          };
        };
      tests = {
        "dbmigrations-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dbmigrations" or (errorHandler.buildDepError "dbmigrations"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."yaml-light" or (errorHandler.buildDepError "yaml-light"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }