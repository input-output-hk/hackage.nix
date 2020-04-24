{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "esqueleto"; version = "1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Felipe Almeida Lessa";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Lessa";
      homepage = "https://github.com/meteficha/esqueleto";
      url = "";
      synopsis = "Bare bones, type-safe EDSL for SQL queries on persistent backends.";
      description = "@persistent@ is a library for type-safe data serialization.  It\nhas many kinds of backends, such as SQL backends\n(@persistent-mysql@, @persistent-postgresql@,\n@persistent-sqlite@) and NoSQL backends (@persistent-mongoDB@).\n\nWhile @persistent@ is a nice library for storing and retrieving\nrecords, currently it has a poor interface for SQL backends\ncompared to SQL itself.  For example, it's extremely hard to do\na type-safe @JOIN@ on a many-to-one relation, and simply\nimpossible to do any other kinds of @JOIN@s (including for the\nvery common many-to-many relations).  Users have the option of\nwriting raw SQL, but that's error prone and not type-checked.\n\n@esqueleto@ is a bare bones, type-safe EDSL for SQL queries\nthat works with unmodified @persistent@ SQL backends.  Its\nlanguage closely resembles SQL, so (a) you don't have to learn\nnew concepts, just new syntax, and (b) it's fairly easy to\npredict the generated SQL and optimize it for your backend.\nMost kinds of errors committed when writing SQL are caught as\ncompile-time errors---although it is possible to write\ntype-checked @esqueleto@ queries that fail at runtime.\n\nCurrently only @SELECT@s are supported.  Not all SQL features\nare available, but most of them can be easily added (especially\nfunctions), so please open an issue or send a pull request if\nyou need anything that is not covered by @esqueleto@ on\n<https://github.com/meteficha/esqueleto/>.\n\nThe name of this library means \\\"skeleton\\\" in Portuguese and\ncontains all three SQL letters in the correct order =).  It was\ninspired by Scala's Squeryl but created from scratch.";
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
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or ((hsPkgs.pkgs-errors).buildDepError "persistent-template"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."esqueleto" or ((hsPkgs.pkgs-errors).buildDepError "esqueleto"))
            ];
          buildable = true;
          };
        };
      };
    }