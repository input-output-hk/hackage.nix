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
      specVersion = "3.0";
      identifier = { name = "mfmts"; version = "1.0.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "zoeymcbride@mailbox.org";
      author = "Zoey McBride";
      homepage = "";
      url = "";
      synopsis = "Implements multiformats specification";
      description = "Implments the multiformats specification used in IPFS and other distributed\nsystems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basesystems" or (errorHandler.buildDepError "basesystems"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
        ];
        buildable = true;
      };
      sublibs = {
        "mfmts-varint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "mfmts-multicodec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mfmts".components.sublibs.mfmts-varint or (errorHandler.buildDepError "mfmts:mfmts-varint"))
          ];
          buildable = true;
        };
        "mfmts-multibase" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."basesystems" or (errorHandler.buildDepError "basesystems"))
          ];
          buildable = true;
        };
        "mfmts-multihash" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mfmts".components.sublibs.mfmts-multicodec or (errorHandler.buildDepError "mfmts:mfmts-multicodec"))
          ];
          buildable = true;
        };
        "mfmts-cid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."basesystems" or (errorHandler.buildDepError "basesystems"))
            (hsPkgs."mfmts".components.sublibs.mfmts-multibase or (errorHandler.buildDepError "mfmts:mfmts-multibase"))
            (hsPkgs."mfmts".components.sublibs.mfmts-multihash or (errorHandler.buildDepError "mfmts:mfmts-multihash"))
            (hsPkgs."mfmts".components.sublibs.mfmts-multicodec or (errorHandler.buildDepError "mfmts:mfmts-multicodec"))
            (hsPkgs."mfmts".components.sublibs.mfmts-varint or (errorHandler.buildDepError "mfmts:mfmts-varint"))
          ];
          buildable = true;
        };
      };
    };
  }