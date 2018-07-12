{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      incompatible-varint = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cql";
          version = "3.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(C) 2014-2015 Toralf Wittner, Roman S. Borschel";
        maintainer = "Toralf Wittner <tw@dtex.org>";
        author = "Toralf Wittner, Roman S. Borschel";
        homepage = "https://gitlab.com/twittner/cql/";
        url = "";
        synopsis = "Cassandra CQL binary protocol.";
        description = "Implementation of Cassandra's CQL Binary Protocol\n<https://github.com/apache/cassandra/blob/trunk/doc/native_protocol_v2.spec Version 2>\nand\n<https://github.com/apache/cassandra/blob/trunk/doc/native_protocol_v3.spec Version 3>.\n\nIt provides encoding and decoding functionality as well as representations\nof the various protocol related types.\n\nThus it can serve as a building block for writing Cassandra drivers, such\nas <http://hackage.haskell.org/package/cql-io cql-io>.";
        buildType = "Simple";
      };
      components = {
        "cql" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.Decimal
            hsPkgs.iproute
            hsPkgs.network
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.uuid
            hsPkgs.vector
          ];
        };
        tests = {
          "cql-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.cql
              hsPkgs.Decimal
              hsPkgs.iproute
              hsPkgs.network
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.time
              hsPkgs.uuid
            ];
          };
        };
      };
    }