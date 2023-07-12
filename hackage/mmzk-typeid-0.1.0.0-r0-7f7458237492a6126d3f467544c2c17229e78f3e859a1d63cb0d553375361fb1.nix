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
      identifier = { name = "mmzk-typeid"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Yitang Chen <mmzk1526@ic.ac.uk>";
      author = "Yitang Chen <mmzk1526@ic.ac.uk>";
      homepage = "https://github.com/MMZK1526/mmzk-typeid";
      url = "";
      synopsis = "A TypeID implementation for Haskell";
      description = "TypeID is a type-safe, K-sortable, globally unique identifier inspired by Stripe IDs.\n\nThe specification is available at https://github.com/jetpack-io/typeid.\n\nThis library supports generating and parsing speç-conforming TypeIDs, with the following additional features:\n\n- Batch generating TypeIDs with the same 'UUID'v7 timestamp\n\n- Encode prefixes at type-level for better type-safety\n\nThe following extensions are recommended when using this library:\n\n> {-# LANGUAGE BlockArguments #-}\n> {-# LANGUAGE DataKinds #-}\n> {-# LANGUAGE InstanceSigs #-}\n> {-# LANGUAGE MultiWayIf #-}\n> {-# LANGUAGE OverloadedStrings #-}\n> {-# LANGUAGE TypeApplications #-}\n\nFor a quick \"how-to-use\" guide, please refer to the README.md file at https://github.com/MMZK1526/mmzk-typeid#readme.";
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
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
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
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }