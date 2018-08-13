{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "postgresql-binary";
        version = "0.7.5.1";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/postgresql-binary";
      url = "";
      synopsis = "Encoders and decoders for the PostgreSQL's binary format";
      description = "An API for dealing with PostgreSQL's binary data format.\n\nIt can be used to implement performant bindings to Postgres.\nE.g., <http://hackage.haskell.org/package/hasql \"hasql\">\nis based on this library.\n\nIt supports all Postgres versions starting from 8.3\nand is tested against 8.3, 9.3 and 9.4\nwith the @integer_datetimes@ setting off and on.";
      buildType = "Simple";
    };
    components = {
      "postgresql-binary" = {
        depends  = [
          (hsPkgs.binary-parser)
          (hsPkgs.aeson)
          (hsPkgs.uuid)
          (hsPkgs.time)
          (hsPkgs.scientific)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
          (hsPkgs.foldl)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.postgresql-binary)
            (hsPkgs.postgresql-libpq)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.uuid)
            (hsPkgs.time)
            (hsPkgs.scientific)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.conversion)
            (hsPkgs.conversion-bytestring)
            (hsPkgs.conversion-text)
            (hsPkgs.either)
            (hsPkgs.transformers)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
      };
      benchmarks = {
        "encoding" = {
          depends  = [
            (hsPkgs.postgresql-binary)
            (hsPkgs.criterion)
            (hsPkgs.time)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.mtl-prelude)
            (hsPkgs.base-prelude)
          ];
        };
        "decoding" = {
          depends  = [
            (hsPkgs.postgresql-binary)
            (hsPkgs.criterion)
            (hsPkgs.time)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.mtl-prelude)
            (hsPkgs.base-prelude)
          ];
        };
      };
    };
  }