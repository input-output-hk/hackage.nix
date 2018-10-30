{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Frames-beam";
        version = "0.1.0.1";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.beam-core)
          (hsPkgs.beam-postgres)
          (hsPkgs.beam-migrate)
          (hsPkgs.text)
          (hsPkgs.postgresql-simple)
          (hsPkgs.Frames)
          (hsPkgs.template-haskell)
          (hsPkgs.generics-sop)
          (hsPkgs.vinyl)
          (hsPkgs.process)
          (hsPkgs.conduit)
          (hsPkgs.monad-control)
          (hsPkgs.bytestring)
          (hsPkgs.scientific)
          (hsPkgs.time)
          (hsPkgs.uuid-types)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Frames-beam)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.QuickCheck)
            (hsPkgs.conduit)
            (hsPkgs.generics-sop)
            (hsPkgs.text)
            (hsPkgs.vinyl)
            (hsPkgs.Frames)
            (hsPkgs.beam-core)
            (hsPkgs.beam-postgres)
            (hsPkgs.beam-migrate)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }