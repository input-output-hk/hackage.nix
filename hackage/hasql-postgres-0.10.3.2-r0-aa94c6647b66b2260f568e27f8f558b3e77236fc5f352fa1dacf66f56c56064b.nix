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
      identifier = { name = "hasql-postgres"; version = "0.10.3.2"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-postgres ";
      url = "";
      synopsis = "A \"PostgreSQL\" backend for the \"hasql\" library";
      description = "This library provides a \\\"PostgreSQL\\\" driver for\n<http://hackage.haskell.org/package/hasql the \"hasql\" library>.\n\nIt supports all Postgres versions starting from 8.3\nand is tested against 8.3, 9.3 and 9.4\nwith the @integer_datetimes@ setting off and on.\n\nAccording to the included benchmarks,\nit performs up to 2x faster than \\\"postgresql-simple\\\" and\nup to 7x faster than \\\"HDBC\\\".\nYou can read up\n<http://nikita-volkov.github.io/hasql-benchmarks/ a post with analysis of those benchmarks>.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."hasql-backend" or (errorHandler.buildDepError "hasql-backend"))
          (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
          (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "hspec" = {
          depends = [
            (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
            (hsPkgs."hasql-postgres" or (errorHandler.buildDepError "hasql-postgres"))
            (hsPkgs."hasql-backend" or (errorHandler.buildDepError "hasql-backend"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."mtl-prelude" or (errorHandler.buildDepError "mtl-prelude"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "competition" = {
          depends = [
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."hasql-postgres" or (errorHandler.buildDepError "hasql-postgres"))
            (hsPkgs."hasql-backend" or (errorHandler.buildDepError "hasql-backend"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."criterion-plus" or (errorHandler.buildDepError "criterion-plus"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."mtl-prelude" or (errorHandler.buildDepError "mtl-prelude"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            ];
          buildable = true;
          };
        };
      };
    }