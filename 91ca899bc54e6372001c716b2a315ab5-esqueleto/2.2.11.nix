{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      postgresql = false;
      mysql = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "esqueleto";
        version = "2.2.11";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2015 Felipe Almeida Lessa";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Lessa";
      homepage = "https://github.com/prowdsponsor/esqueleto";
      url = "";
      synopsis = "Type-safe EDSL for SQL queries on persistent backends.";
      description = "@esqueleto@ is a bare bones, type-safe EDSL for SQL queries\nthat works with unmodified @persistent@ SQL backends.  Its\nlanguage closely resembles SQL, so you don't have to learn\nnew concepts, just new syntax, and it's fairly easy to\npredict the generated SQL and optimize it for your backend.\nMost kinds of errors committed when writing SQL are caught as\ncompile-time errors---although it is possible to write\ntype-checked @esqueleto@ queries that fail at runtime.\n\n@persistent@ is a library for type-safe data serialization.  It\nhas many kinds of backends, such as SQL backends\n(@persistent-mysql@, @persistent-postgresql@,\n@persistent-sqlite@) and NoSQL backends (@persistent-mongoDB@).\nWhile @persistent@ is a nice library for storing and retrieving\nrecords, including with filters, it does not try to support\nsome of the features that are specific to SQL backends.  In\nparticular, @esqueleto@ is the recommended library for\ntype-safe @JOIN@s on @persistent@ SQL backends.  (The\nalternative is using raw SQL, but that's error prone and does\nnot offer any composability.)\n\nCurrently, @SELECT@s, @UPDATE@s, @INSERT@s and @DELETE@s are supported.\nNot all SQL features are available, but most of them can be easily added\n(especially functions), so please open an issue or send a pull request if\nyou need anything that is not covered by @esqueleto@ on\n<https://github.com/prowdsponsor/esqueleto/>.\n\nThe name of this library means \\\"skeleton\\\" in Portuguese and\ncontains all three SQL letters in the correct order =).  It was\ninspired by Scala's Squeryl but created from scratch.";
      buildType = "Simple";
    };
    components = {
      "esqueleto" = {
        depends  = [
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
          depends  = ([
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
          ] ++ pkgs.lib.optionals (_flags.postgresql) [
            (hsPkgs.postgresql-simple)
            (hsPkgs.postgresql-libpq)
            (hsPkgs.persistent-postgresql)
          ]) ++ pkgs.lib.optionals (_flags.mysql) [
            (hsPkgs.mysql-simple)
            (hsPkgs.mysql)
            (hsPkgs.persistent-mysql)
          ];
        };
      };
    };
  }