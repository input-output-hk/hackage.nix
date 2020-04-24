{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-transactional"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2015 Helium";
      maintainer = "patrick@helium.com";
      author = "Reid Draper and Patrick Thomson";
      homepage = "";
      url = "";
      synopsis = "a transactional monad on top of postgresql-simple";
      description = "This package is a simple monadic wrapper around the SQL primitives\nprovided by the postgresql-simple package. It provides simple and\npredictable semantics for database options, enforces awareness of\nPostgres's transactional nature at API boundaries, and obviates\nthe need for SQL boilerplate in transactional queries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          ];
        buildable = true;
        };
      };
    }