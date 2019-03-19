{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "esqueleto"; version = "2.7.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2016 Felipe Almeida Lessa";
      maintainer = "cma@bitemyapp.com";
      author = "Felipe Lessa";
      homepage = "https://github.com/bitemyapp/esqueleto";
      url = "";
      synopsis = "Type-safe EDSL for SQL queries on persistent backends.";
      description = "@esqueleto@ is a bare bones, type-safe EDSL for SQL queries that works with unmodified @persistent@ SQL backends.  Its language closely resembles SQL, so you don't have to learn new concepts, just new syntax, and it's fairly easy to predict the generated SQL and optimize it for your backend. Most kinds of errors committed when writing SQL are caught as compile-time errors---although it is possible to write type-checked @esqueleto@ queries that fail at runtime.\n\n@persistent@ is a library for type-safe data serialization.  It has many kinds of backends, such as SQL backends (@persistent-mysql@, @persistent-postgresql@, @persistent-sqlite@) and NoSQL backends (@persistent-mongoDB@). While @persistent@ is a nice library for storing and retrieving records, including with filters, it does not try to support some of the features that are specific to SQL backends.  In particular, @esqueleto@ is the recommended library for type-safe @JOIN@s on @persistent@ SQL backends.  (The alternative is using raw SQL, but that's error prone and does not offer any composability.)\n\nCurrently, @SELECT@s, @UPDATE@s, @INSERT@s and @DELETE@s are supported. Not all SQL features are available, but most of them can be easily added (especially functions), so please open an issue or send a pull request if you need anything that is not covered by @esqueleto@ on <https://github.com/bitemyapp/esqueleto>.\n\nThe name of this library means \\\"skeleton\\\" in Portuguese and contains all three SQL letters in the correct order =).  It was inspired by Scala's Squeryl but created from scratch.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.monad-logger)
          (hsPkgs.persistent)
          (hsPkgs.resourcet)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "mysql" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.esqueleto)
            (hsPkgs.hspec)
            (hsPkgs.monad-logger)
            (hsPkgs.mysql)
            (hsPkgs.mysql-simple)
            (hsPkgs.persistent)
            (hsPkgs.persistent-mysql)
            (hsPkgs.persistent-template)
            (hsPkgs.resourcet)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            ];
          };
        "postgresql" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.esqueleto)
            (hsPkgs.hspec)
            (hsPkgs.monad-logger)
            (hsPkgs.persistent)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.persistent-template)
            (hsPkgs.postgresql-libpq)
            (hsPkgs.postgresql-simple)
            (hsPkgs.resourcet)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            ];
          };
        "sqlite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.esqueleto)
            (hsPkgs.hspec)
            (hsPkgs.monad-logger)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.resourcet)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }