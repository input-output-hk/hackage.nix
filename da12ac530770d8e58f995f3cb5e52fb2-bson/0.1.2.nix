{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "bson";
          version = "0.1.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Tony Hannan <tony@10gen.com>";
        author = "Tony Hannan";
        homepage = "http://github.com/TonyGen/bson-haskell";
        url = "";
        synopsis = "BSON documents are JSON-like objects with a standard binary encoding";
        description = "A BSON Document is an untyped (dynamically type-checked) record. I.e. it is a list of name-value pairs, where a Value is a single sum type with constructors for basic types (Bool, Int, Float, String, and Time), compound types (List, and (embedded) Document), and special types (Binary, Javascript, ObjectId, RegEx, and a few others).\n\nA BSON Document is serialized to a standard binary encoding defined at <http://bsonspec.org>. This implements version 1 of that spec.";
        buildType = "Simple";
      };
      components = {
        bson = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.nano-md5
            hsPkgs.binary
            hsPkgs.data-binary-ieee754
            hsPkgs.compact-string-fix
            hsPkgs.mtl
          ];
        };
      };
    }