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
      identifier = { name = "seakale-postgresql"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomas.feron@redspline.com";
      author = "Thomas Feron";
      homepage = "";
      url = "";
      synopsis = "PostgreSQL backend for Seakale";
      description = "This package provides a way to run code written with Seakale with a PostgreSQL database.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."seakale" or (errorHandler.buildDepError "seakale"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }