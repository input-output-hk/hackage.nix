{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Frames-beam"; version = "0.2.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."beam-core" or ((hsPkgs.pkgs-errors).buildDepError "beam-core"))
          (hsPkgs."beam-postgres" or ((hsPkgs.pkgs-errors).buildDepError "beam-postgres"))
          (hsPkgs."beam-migrate" or ((hsPkgs.pkgs-errors).buildDepError "beam-migrate"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."Frames" or ((hsPkgs.pkgs-errors).buildDepError "Frames"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."uuid-types" or ((hsPkgs.pkgs-errors).buildDepError "uuid-types"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Frames-beam" or ((hsPkgs.pkgs-errors).buildDepError "Frames-beam"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
            (hsPkgs."Frames" or ((hsPkgs.pkgs-errors).buildDepError "Frames"))
            (hsPkgs."beam-core" or ((hsPkgs.pkgs-errors).buildDepError "beam-core"))
            (hsPkgs."beam-postgres" or ((hsPkgs.pkgs-errors).buildDepError "beam-postgres"))
            (hsPkgs."beam-migrate" or ((hsPkgs.pkgs-errors).buildDepError "beam-migrate"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }