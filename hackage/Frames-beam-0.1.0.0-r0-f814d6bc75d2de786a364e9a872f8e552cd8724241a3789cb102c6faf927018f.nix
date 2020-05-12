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
      identifier = { name = "Frames-beam"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Gagandeep Bhatia";
      maintainer = "gagandeepbhatia.in@gmail.com";
      author = "Gagandeep Bhatia";
      homepage = "https://github.com/gagandeepb/Frames-beam";
      url = "";
      synopsis = "A library for accessing Postgres tables as in-memory data structures.";
      description = "This library provides a way to access Postgres tables as data frames by providing helpers for generating\ntypes (at compile time) corresponding to a database schema  and canned queries to execute against a database\ninstance. Additionally, provides utilities to convert plain Haskell records (i.e. the format of query results)\nto vinyl records (upon which the Frames library is based). Can be used for interactive exploration by loading\nall data in-memory at once (and converting to a data frame), and also in a constant memory streaming mode.\nStart here: \"Frames.SQL.Beam.Postgres\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
          (hsPkgs."beam-postgres" or (errorHandler.buildDepError "beam-postgres"))
          (hsPkgs."beam-migrate" or (errorHandler.buildDepError "beam-migrate"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Frames-beam" or (errorHandler.buildDepError "Frames-beam"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
            (hsPkgs."beam-postgres" or (errorHandler.buildDepError "beam-postgres"))
            (hsPkgs."beam-migrate" or (errorHandler.buildDepError "beam-migrate"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }