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
    flags = {
      hdbc-mysql = false;
      hdbc-odbc = false;
      llvm = false;
      printdbqueries = false;
      printdbrows = false;
      querydbconcurrently = true;
      static = false;
      threaded = true;
      unix = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "weekdaze"; version = "0.0.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2013-2015 Dr. Alistair Ward";
      maintainer = "mailto:weekdaze@functionalley.com";
      author = "Dr. Alistair Ward";
      homepage = "https://functionalley.com/WeekDaze/weekdaze.html";
      url = "";
      synopsis = "A school-timetable problem-solver.";
      description = "An application which searches for a solution to the configured school-timetable problem.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."factory" or (errorHandler.buildDepError "factory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ] ++ (pkgs.lib).optionals (flags.hdbc-odbc || flags.hdbc-mysql) [
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          ];
        buildable = true;
        };
      exes = {
        "weekdaze" = {
          depends = ([
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."factory" or (errorHandler.buildDepError "factory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
            (hsPkgs."weekdaze" or (errorHandler.buildDepError "weekdaze"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            ] ++ (pkgs.lib).optionals (flags.hdbc-odbc || flags.hdbc-mysql) (([
            (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            ] ++ (pkgs.lib).optional (flags.hdbc-mysql) (hsPkgs."HDBC-mysql" or (errorHandler.buildDepError "HDBC-mysql"))) ++ (pkgs.lib).optional (flags.hdbc-odbc) (hsPkgs."HDBC-odbc" or (errorHandler.buildDepError "HDBC-odbc")))) ++ (pkgs.lib).optional (flags.unix) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."factory" or (errorHandler.buildDepError "factory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
            (hsPkgs."weekdaze" or (errorHandler.buildDepError "weekdaze"))
            ];
          buildable = true;
          };
        };
      };
    }