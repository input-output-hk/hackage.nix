{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "beam-migrate"; version = "0.3.1.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."beam-core" or ((hsPkgs.pkgs-errors).buildDepError "beam-core"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
          (hsPkgs."pqueue" or ((hsPkgs.pkgs-errors).buildDepError "pqueue"))
          (hsPkgs."uuid-types" or ((hsPkgs.pkgs-errors).buildDepError "uuid-types"))
          ];
        buildable = true;
        };
      };
    }