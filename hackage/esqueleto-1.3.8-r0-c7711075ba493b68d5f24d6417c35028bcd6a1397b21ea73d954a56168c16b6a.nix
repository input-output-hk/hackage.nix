{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { postgresql = false; mysql = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "esqueleto"; version = "1.3.8"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2014 Felipe Almeida Lessa";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Lessa";
      homepage = "https://github.com/meteficha/esqueleto";
      url = "";
      synopsis = "Bare bones, type-safe EDSL for SQL queries on persistent backends.";
      description = "@persistent@ is a library for type-safe data serialization.  It\nhas many kinds of backends, such as SQL backends\n(@persistent-mysql@, @persistent-postgresql@,\n@persistent-sqlite@) and NoSQL backends (@persistent-mongoDB@).\n\nWhile @persistent@ is a nice library for storing and retrieving\nrecords, currently it has a poor interface for SQL backends\ncompared to SQL itself.  For example, it's extremely hard to do\na type-safe @JOIN@ on a many-to-one relation, and simply\nimpossible to do any other kinds of @JOIN@s (including for the\nvery common many-to-many relations).  Users have the option of\nwriting raw SQL, but that's error prone and not type-checked.\n\n@esqueleto@ is a bare bones, type-safe EDSL for SQL queries\nthat works with unmodified @persistent@ SQL backends.  Its\nlanguage closely resembles SQL, so (a) you don't have to learn\nnew concepts, just new syntax, and (b) it's fairly easy to\npredict the generated SQL and optimize it for your backend.\nMost kinds of errors committed when writing SQL are caught as\ncompile-time errors---although it is possible to write\ntype-checked @esqueleto@ queries that fail at runtime.\n\nCurrently, @SELECT@s, @UPDATE@s, @INSERT@s and @DELETE@s are supported.\nNot all SQL features are available, but most of them can be easily added\n(especially functions), so please open an issue or send a pull request if\nyou need anything that is not covered by @esqueleto@ on\n<https://github.com/meteficha/esqueleto/>.\n\nThe name of this library means \\\"skeleton\\\" in Portuguese and\ncontains all three SQL letters in the correct order =).  It was\ninspired by Scala's Squeryl but created from scratch.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.persistent)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.tagged)
          (hsPkgs.monad-logger)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          ];
        };
      tests = {
        "test" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.persistent)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.esqueleto)
            ] ++ (pkgs.lib).optionals (flags.postgresql) [
            (hsPkgs.postgresql-simple)
            (hsPkgs.postgresql-libpq)
            (hsPkgs.persistent-postgresql)
            ]) ++ (pkgs.lib).optionals (flags.mysql) [
            (hsPkgs.mysql-simple)
            (hsPkgs.mysql)
            (hsPkgs.persistent-mysql)
            ];
          };
        };
      };
    }