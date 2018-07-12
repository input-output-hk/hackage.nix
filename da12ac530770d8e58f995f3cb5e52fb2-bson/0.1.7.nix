{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bson";
          version = "0.1.7";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2010-2012 10gen Inc.";
        maintainer = "Tony Hannan <tonyhannan@gmail.com>";
        author = "Tony Hannan";
        homepage = "http://github.com/TonyGen/bson-haskell";
        url = "";
        synopsis = "BSON documents are JSON-like objects with a standard binary encoding";
        description = "A BSON Document is an untyped (dynamically type-checked) record. I.e. it is a list of name-value pairs, where a Value is a single sum type with constructors for basic types (Bool, Int, Float, String, and Time), compound types (List, and (embedded) Document), and special types (Binary, Javascript, ObjectId, RegEx, and a few others).\n\nA BSON Document is serialized to a standard binary encoding defined at <http://bsonspec.org>. This implements version 1 of that spec.";
        buildType = "Simple";
      };
      components = {
        "bson" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.cryptohash
            hsPkgs.binary
            hsPkgs.data-binary-ieee754
            hsPkgs.compact-string-fix
            hsPkgs.mtl
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.file-location
              hsPkgs.base
              hsPkgs.bson
              hsPkgs.QuickCheck
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.cryptohash
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.data-binary-ieee754
              hsPkgs.compact-string-fix
              hsPkgs.file-location
            ];
          };
        };
      };
    }