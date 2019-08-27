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
      identifier = { name = "weekdaze"; version = "0.0.0.1"; };
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
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."factory" or (buildDepError "factory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."toolshed" or (buildDepError "toolshed"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          ] ++ (pkgs.lib).optionals (flags.hdbc-odbc || flags.hdbc-mysql) [
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          ];
        };
      exes = {
        "weekdaze" = {
          depends = ([
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."factory" or (buildDepError "factory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."toolshed" or (buildDepError "toolshed"))
            (hsPkgs."weekdaze" or (buildDepError "weekdaze"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            ] ++ (pkgs.lib).optionals (flags.hdbc-odbc || flags.hdbc-mysql) (([
            (hsPkgs."byteable" or (buildDepError "byteable"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            ] ++ (pkgs.lib).optional (flags.hdbc-mysql) (hsPkgs."HDBC-mysql" or (buildDepError "HDBC-mysql"))) ++ (pkgs.lib).optional (flags.hdbc-odbc) (hsPkgs."HDBC-odbc" or (buildDepError "HDBC-odbc")))) ++ (pkgs.lib).optional (flags.unix) (hsPkgs."unix" or (buildDepError "unix"));
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."factory" or (buildDepError "factory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."toolshed" or (buildDepError "toolshed"))
            (hsPkgs."weekdaze" or (buildDepError "weekdaze"))
            ];
          };
        };
      };
    }