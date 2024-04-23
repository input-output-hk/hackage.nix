{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ (if flags._old-network
          then [ (hsPkgs."network" or (errorHandler.buildDepError "network")) ]
          else [
            (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
          ]);
        buildable = true;
      };
      tests = {
        "bson-tests" = {
          depends = [
            (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }