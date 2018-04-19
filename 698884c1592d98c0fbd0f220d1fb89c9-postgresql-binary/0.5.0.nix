{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postgresql-binary";
          version = "0.5.0";
        };
        license = "MIT";
        copyright = "(c) 2014, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/postgresql-binary";
        url = "";
        synopsis = "Encoders and decoders for the PostgreSQL's binary format";
        description = "An API for dealing with PostgreSQL's binary data format.\n\nIt can be used to implement high level APIs for Postgres.\nE.g., <http://hackage.haskell.org/package/hasql-postgres \"hasql-postgres\">\nis based on this library.\n\nIt supports all Postgres versions starting from 8.3\nand is tested against 8.3, 9.3 and 9.4\nwith the @integer_datetimes@ setting off and on.";
        buildType = "Simple";
      };
      components = {
        postgresql-binary = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.uuid
            hsPkgs.time
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.loch-th
            hsPkgs.placeholders
            hsPkgs.transformers
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.postgresql-binary
              hsPkgs.HTF
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck
              hsPkgs.postgresql-libpq
              hsPkgs.uuid
              hsPkgs.time
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
        };
        benchmarks = {
          decoding = {
            depends  = [
              hsPkgs.postgresql-binary
              hsPkgs.criterion
              hsPkgs.time
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.mtl-prelude
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
          encoding = {
            depends  = [
              hsPkgs.postgresql-binary
              hsPkgs.criterion
              hsPkgs.time
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.mtl-prelude
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
        };
      };
    }