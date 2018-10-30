{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "postgresql-binary";
        version = "0.12.1.1";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/postgresql-binary";
      url = "";
      synopsis = "Encoders and decoders for the PostgreSQL's binary format";
      description = "An API for dealing with PostgreSQL's binary data format.\n\nIt can be used to implement performant bindings to Postgres.\nE.g., <http://hackage.haskell.org/package/hasql \"hasql\">\nis based on this library.\n\nIt supports all Postgres versions starting from 8.3\nand is tested against 8.3, 9.3 and 9.5\nwith the @integer_datetimes@ setting off and on.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.binary-parser)
          (hsPkgs.bytestring-strict-builder)
          (hsPkgs.aeson)
          (hsPkgs.uuid)
          (hsPkgs.time)
          (hsPkgs.scientific)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.network-ip)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
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
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.json-ast)
            (hsPkgs.conversion)
            (hsPkgs.conversion-bytestring)
            (hsPkgs.conversion-text)
            (hsPkgs.network-ip)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.rerebase)
          ];
        };
      };
      benchmarks = {
        "encoding" = {
          depends  = [
            (hsPkgs.postgresql-binary)
            (hsPkgs.criterion)
            (hsPkgs.rerebase)
          ];
        };
        "decoding" = {
          depends  = [
            (hsPkgs.postgresql-binary)
            (hsPkgs.criterion)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }