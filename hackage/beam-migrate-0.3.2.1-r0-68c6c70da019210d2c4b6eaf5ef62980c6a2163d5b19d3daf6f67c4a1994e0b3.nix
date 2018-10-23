{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "beam-migrate";
        version = "0.3.2.1";
      };
      license = "MIT";
      copyright = "Copyright (C) 2017-2018 Travis Athougies";
      maintainer = "travis@athougies.net";
      author = "Travis Athougies";
      homepage = "https://travis.athougies.net/projects/beam.html";
      url = "";
      synopsis = "SQL DDL support and migrations support library for Beam";
      description = "This package provides type classes to allow backends to implement\nSQL DDL support for beam. This allows you to use beam syntax to\nwrite type-safe schema generation code.\nThe package also provides features to introspect beam schemas,\nand support for automatic generation of migrations in SQL and\nHaskell formats.\nThis is mostly a low-level support library. Most often, this\nlibrary is used to write tooling to support DDL manipulation in\nyour project, or to enable migrations support in beam backends.\nFor a more turnkey solution for database migrations, consider\nthe <http://hackage.haskell.org/package/beam-migrate-cli beam-migrate>\ncommand line tool. This provides out-of-the-box support for migrations,\nschema change management, and version control, based on the features\nprovided in this library.";
      buildType = "Simple";
    };
    components = {
      "beam-migrate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.beam-core)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.free)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.parallel)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.pretty)
          (hsPkgs.dependent-map)
          (hsPkgs.dependent-sum)
          (hsPkgs.pqueue)
          (hsPkgs.uuid-types)
        ];
      };
    };
  }