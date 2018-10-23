{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hasql";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql";
      url = "";
      synopsis = "A minimalistic general high level API for relational databases";
      description = "A robust and concise yet powerful API for communication with arbitrary\nrelational databases. Features:\n\n* Concise and crisp API. Just a few functions and two monads doing all the\nboilerplate job for you.\n\n* Automated management of resources related to connections, transactions and\ncursors.\n\n* A built-in connections pool.\n\n* Employment of prepared statements. Every statement you emit gets prepared\nand cached. This raises the performance of the backend.\n\n* Support for cursors. Allows to fetch virtually limitless result sets in a\nconstant memory using streaming.\n\n* Type-level generation of templates. You just can't write a statement with an\nincorrect number of placeholders.\n\n* Mapping to any types actually supported by the backend.";
      buildType = "Simple";
    };
    components = {
      "hasql" = {
        depends  = [
          (hsPkgs.hasql-backend)
          (hsPkgs.template-haskell)
          (hsPkgs.attoparsec)
          (hsPkgs.ex-pool)
          (hsPkgs.vector)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.list-t)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.safe)
          (hsPkgs.mmorph)
          (hsPkgs.mtl-prelude)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
    };
  }