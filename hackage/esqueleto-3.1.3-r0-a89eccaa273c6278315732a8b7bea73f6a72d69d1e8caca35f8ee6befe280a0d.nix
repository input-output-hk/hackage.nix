let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "esqueleto"; version = "3.1.3"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "mysql" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mysql" or (buildDepError "mysql"))
            (hsPkgs."mysql-simple" or (buildDepError "mysql-simple"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-mysql" or (buildDepError "persistent-mysql"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "postgresql" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-postgresql" or (buildDepError "persistent-postgresql"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
            (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "sqlite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }