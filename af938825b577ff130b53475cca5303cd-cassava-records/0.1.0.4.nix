{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cassava-records";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Guru Devanla";
        maintainer = "grdvnl@gmail.com";
        author = "Guru Devanla";
        homepage = "https://github.com/gdevanla/cassava-records#readme";
        url = "";
        synopsis = "Auto-generation of records data type.";
        description = "cassava-records library helps in auto-creating record data types using Template Haskell by inferring types from the columns of a csv or compatible input file. The record and type classes instances generated can be seamlessly used with cassava(the haskell csv reader library) to load the data into these record types without dealing with any other level of abstraction.\nPlease see README on Github at <https://github.com/gdevanla/cassava-records#readme>";
        buildType = "Simple";
      };
      components = {
        "cassava-records" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cassava
            hsPkgs.foldl
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          "cassava-records-test" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cassava
              hsPkgs.cassava-records
              hsPkgs.containers
              hsPkgs.foldl
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }