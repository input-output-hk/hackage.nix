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
      identifier = { name = "hasql"; version = "0.1.4"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql ";
      url = "";
      synopsis = "A minimalistic general high level API for relational databases";
      description = "A robust and concise yet powerful API for communication with arbitrary\nrelational databases.\n\nFeatures:\n\n* Concise and crisp API. Just a few functions and two monads doing all the\nboilerplate job for you.\n\n* A powerful transaction abstraction, which provides\nan automated resolution of conflicts.\nThe API ensures that you're only able to perform a specific\nset of actions in the transaction context,\nwhich allows Hasql to safely resolve conflicting transactions\nby automatically retrying them.\nThis is much inspired by STM and ST.\n\n* Support for cursors. Allows to fetch virtually limitless result sets in a\nconstant memory using streaming.\n\n* Employment of prepared statements.\nEvery statement you emit gets prepared and cached.\nThis raises the performance of the backend.\n\n* Automated management of resources related to connections, transactions and\ncursors.\n\n* A built-in connections pool.\n\n* Type-level generation of templates. You just can't write a statement with an\nincorrect number of placeholders.\n\n* Mapping to any types actually supported by the backend.\n\nLinks:\n\n* <http://nikita-volkov.github.io/hasql-benchmarks/ Benchmarks analysis>.\n\n* <http://hackage.haskell.org/package/hasql-0.1.3/src/demo/Main.hs A basic tutorial-demo>.\n\n* <http://hackage.haskell.org/package/hasql-postgres A PostgreSQL backend>.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hasql-backend" or (errorHandler.buildDepError "hasql-backend"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."ex-pool" or (errorHandler.buildDepError "ex-pool"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
          (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."mtl-prelude" or (errorHandler.buildDepError "mtl-prelude"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      benchmarks = {
        "demo" = {
          depends = [
            (hsPkgs."hasql-postgres" or (errorHandler.buildDepError "hasql-postgres"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }