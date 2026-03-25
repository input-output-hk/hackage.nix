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
    flags = {
      arbitrary = false;
      debug = false;
      flat = false;
      hashable = false;
    };
    package = {
      specVersion = "3.12";
      identifier = { name = "pg-schema"; version = "0.5.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Dmitry Olshansky";
      maintainer = "olshanskydr@gmail.com";
      author = "Dmitry Olshansky";
      homepage = "https://github.com/odr/pg-schema/tree/master/pg-schema#readme";
      url = "";
      synopsis = "Type-level definition of database schema and safe DML for PostgreSQL.";
      description = "== Schema definition\n\nUse `updateSchemaFile` function from \"PgSchema.Generation\" module to generate type-level definition of database schema.\nYou can make several schemas with any parts of your database.\n\nUsually you make executable which imports this module and run it to generate schema definition.\nYou can run it on CI to check if schema definition is up to date.\n\n== Safe DML for PostgreSQL\n\nUse \"PgSchema.DML\" module to describe and generate (in runtime) safe DML for PostgreSQL.\nAll operations are statically checked and you can't write invalid SQL.\n\nWith @pg-schema@ you can select or insert/upsert data into tree-like ADT in one request.\n\n=== Example\nLet's say\n\n- we have a database with tables: \"orders\", \"order_positions\", \"articles\".\n- There are articles with ids 41 and 42.\n- We have generated `MySch` schema with `updateSchemaFile` function from \"PgSchema.Generation\" module.\n\nThen we can write a function to insert an order with order positions.\nAnd select orders with order positions and articles in one request using some conditions for orders and order positions that return in order.\n\n@\ndata Order = Order { num :: Text, createdAt :: Day, items :: [OrdPos] } deriving Generic\ndata OrdPos = OrdPos { id :: Int32, num :: Int32, article :: Article, price :: Double } deriving Generic\ndata Article = Article { id :: Int32, name :: Text } deriving Generic\ntype MyAnn tabName = 'Ann 5 CamelToSnake MySch (\"dbSchema\" ->> tabName)\n    ...\ndo\n\n  void $ insertJSON_ (MyAnn \"orders\") conn\n    [ \"num\" =: \"num1\" :. \"ord__ord_pos\" =:\n      [ \"num\" =: 1 :. \"articleId\" =: 42 :. \"price\" =: 10\n      , \"num\" =: 2 :. \"articleId\" =: 41 :. \"price\" =: 15 ] ]\n\n\n  (xs :: [Order]) <- selectSch (MyAnn \"orders\") conn $ qRoot do\n    qWhere $ \"created_at\" >? someDay\n      &&& pchild \"ord__ord_pos\" defTabParam\n        (pparent \"ord_pos__article\" $ \"name\" ~~? \"%pencil%\")\n    qOrderBy [descf \"created_at\", descf \"num\"]\n    qPath \"ord__ord_pos\" do\n      qWhere $ pparent \"ord_pos__article\" $ \"name\" ~~? \"%pencil%\"\n      qOrderBy [ascf \"num\"]\n    qLimit 20\n@\n\n=== Module structure\n\n* \"PgSchema.Generation\" - module with generation functions.\n  Usually you make executable which generates schema definition using this module.\n* \"PgSchema.DML\" - module with DML functions. Import this module into your application and use it to generate safe DML for PostgreSQL.\n* \"PgSchema.Import\" - generated schema module imports this module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."singletons-th" or (errorHandler.buildDepError "singletons-th"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
        ] ++ pkgs.lib.optional (flags.flat) (hsPkgs."flat" or (errorHandler.buildDepError "flat"))) ++ pkgs.lib.optional (flags.arbitrary) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))) ++ pkgs.lib.optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"));
        buildable = true;
      };
      exes = {
        "test-gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pg-schema" or (errorHandler.buildDepError "pg-schema"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          ];
          buildable = true;
        };
      };
      tests = {
        "json-spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pg-schema" or (errorHandler.buildDepError "pg-schema"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "test-pgs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."pg-schema" or (errorHandler.buildDepError "pg-schema"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }