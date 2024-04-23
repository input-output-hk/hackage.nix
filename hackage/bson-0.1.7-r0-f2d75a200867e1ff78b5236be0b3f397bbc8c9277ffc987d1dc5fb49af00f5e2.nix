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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "bson"; version = "0.1.7"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."compact-string-fix" or (errorHandler.buildDepError "compact-string-fix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."file-location" or (errorHandler.buildDepError "file-location"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
            (hsPkgs."compact-string-fix" or (errorHandler.buildDepError "compact-string-fix"))
            (hsPkgs."file-location" or (errorHandler.buildDepError "file-location"))
          ];
          buildable = true;
        };
      };
    };
  }