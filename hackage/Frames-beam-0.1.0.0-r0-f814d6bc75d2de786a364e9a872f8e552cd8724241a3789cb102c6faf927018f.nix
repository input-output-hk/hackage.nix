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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."beam-core" or (buildDepError "beam-core"))
          (hsPkgs."beam-postgres" or (buildDepError "beam-postgres"))
          (hsPkgs."beam-migrate" or (buildDepError "beam-migrate"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
          (hsPkgs."Frames" or (buildDepError "Frames"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."uuid-types" or (buildDepError "uuid-types"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Frames-beam" or (buildDepError "Frames-beam"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."Frames" or (buildDepError "Frames"))
            (hsPkgs."beam-core" or (buildDepError "beam-core"))
            (hsPkgs."beam-postgres" or (buildDepError "beam-postgres"))
            (hsPkgs."beam-migrate" or (buildDepError "beam-migrate"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }