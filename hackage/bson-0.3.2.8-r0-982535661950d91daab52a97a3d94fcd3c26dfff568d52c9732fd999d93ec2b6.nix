{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { _old-network = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bson"; version = "0.3.2.8"; };
      license = "Apache-2.0";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."cryptohash-md5" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-md5"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (if flags._old-network
          then [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ]
          else [
            (hsPkgs."network-bsd" or ((hsPkgs.pkgs-errors).buildDepError "network-bsd"))
            ]);
        buildable = true;
        };
      tests = {
        "bson-tests" = {
          depends = [
            (hsPkgs."bson" or ((hsPkgs.pkgs-errors).buildDepError "bson"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }