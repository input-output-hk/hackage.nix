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
      specVersion = "2.4";
      identifier = { name = "mmzk-typeid"; version = "0.6.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Yitang Chen <mmzk1526@outlook.com>";
      author = "Yitang Chen <mmzk1526@outlook.com>";
      homepage = "https://github.com/MMZK1526/mmzk-typeid";
      url = "";
      synopsis = "A TypeID and UUIDv7 implementation for Haskell";
      description = "'TypeID' is a type-safe, K-sortable, globally unique identifier inspired by Stripe IDs.\n\nThe specification is available at https://github.com/jetpack-io/typeid.\n\nThis library supports generating and parsing speç-conforming 'TypeID's, with the following additional features:\n\n- Batch generating 'TypeID's with the same UUIDv7 timestamp\n\n- Encode prefixes at type-level for better type-safety\n\nIt also serves as a (temporary) UUIDv7 implementation in Haskell, since there are no official ones yet.\n\nPlease enable the following extensions if working with 'KindID':\n\n> {-# LANGUAGE DataKinds #-}\n> {-# LANGUAGE PolyKinds #-}\n> {-# LANGUAGE TypeApplications #-}\n> {-# LANGUAGE TypeFamilies #-}\n\nWhile the following is not required, it is quite convenient to have\n\n> {-# LANGUAGE OverloadedStrings #-}\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          ];
          buildable = true;
        };
      };
    };
  }