{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { postgresql = false; mysql = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "esqueleto"; version = "2.1.2.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2014 Felipe Almeida Lessa";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Lessa";
      homepage = "https://github.com/prowdsponsor/esqueleto";
      url = "";
      synopsis = "Type-safe EDSL for SQL queries on persistent backends.";
      description = "This version is a beta release that works with the persistent-2.0 beta.\n\n@esqueleto@ is a bare bones, type-safe EDSL for SQL queries\nthat works with unmodified @persistent@ SQL backends.  Its\nlanguage closely resembles SQL, so you don't have to learn\nnew concepts, just new syntax, and it's fairly easy to\npredict the generated SQL and optimize it for your backend.\nMost kinds of errors committed when writing SQL are caught as\ncompile-time errors---although it is possible to write\ntype-checked @esqueleto@ queries that fail at runtime.\n\n@persistent@ is a library for type-safe data serialization.  It\nhas many kinds of backends, such as SQL backends\n(@persistent-mysql@, @persistent-postgresql@,\n@persistent-sqlite@) and NoSQL backends (@persistent-mongoDB@).\nWhile @persistent@ is a nice library for storing and retrieving\nrecords, including with filters, it does not try to support\nsome of the features that are specific to SQL backends.  In\nparticular, @esqueleto@ is the recommended library for\ntype-safe @JOIN@s on @persistent@ SQL backends.  (The\nalternative is using raw SQL, but that's error prone and does\nnot offer any composability.)\n\nCurrently, @SELECT@s, @UPDATE@s, @INSERT@s and @DELETE@s are supported.\nNot all SQL features are available, but most of them can be easily added\n(especially functions), so please open an issue or send a pull request if\nyou need anything that is not covered by @esqueleto@ on\n<https://github.com/prowdsponsor/esqueleto/>.\n\nThe name of this library means \\\"skeleton\\\" in Portuguese and\ncontains all three SQL letters in the correct order =).  It was\ninspired by Scala's Squeryl but created from scratch.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or ((hsPkgs.pkgs-errors).buildDepError "persistent-template"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."esqueleto" or ((hsPkgs.pkgs-errors).buildDepError "esqueleto"))
            ] ++ (pkgs.lib).optionals (flags.postgresql) [
            (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
            (hsPkgs."postgresql-libpq" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-libpq"))
            (hsPkgs."persistent-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-postgresql"))
            ]) ++ (pkgs.lib).optionals (flags.mysql) [
            (hsPkgs."mysql-simple" or ((hsPkgs.pkgs-errors).buildDepError "mysql-simple"))
            (hsPkgs."mysql" or ((hsPkgs.pkgs-errors).buildDepError "mysql"))
            (hsPkgs."persistent-mysql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-mysql"))
            ];
          buildable = true;
          };
        };
      };
    }