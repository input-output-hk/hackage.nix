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
        name = "bson";
        version = "0.3.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010-2012 10gen Inc.";
      maintainer = "Fedor Gogolev <knsd@knsd.net>, Greg Weber <greg@gregweber.info>";
      author = "Tony Hannan";
      homepage = "http://github.com/mongodb-haskell/bson";
      url = "";
      synopsis = "BSON documents are JSON-like objects with a standard binary\nencoding.";
      description = "A BSON Document is an untyped (dynamically type-checked) record.\nI.e. it is a list of name-value pairs, where a Value is a single\nsum type with constructors for basic types (Bool, Int, Float,\nString, and Time), compound types (List, and (embedded) Document),\nand special types (Binary, Javascript, ObjectId, RegEx, and a few\nothers).\nA BSON Document is serialized to a standard binary encoding\ndefined at <http://bsonspec.org>. This implements version 1 of\nthat spec.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.cryptohash)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.text)
        ];
      };
      tests = {
        "bson-tests" = {
          depends = [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.cryptohash)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.text)
          ];
        };
      };
    };
  }