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
    flags = { ci = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "ipldm"; version = "1.0.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "zoeymcbride@mailbox.org";
      author = "Zoey McBride";
      homepage = "";
      url = "";
      synopsis = "The InterPlanetary Linked Data Model and codec formats.";
      description = "Provides the IPLD data model in an abstract form with the different IPLD\ndata kinds. Also codecs for decoding these kinds from serialized formats\nsuch as DAG-CBOR, and encoding the abstract data model back into binary\nformats.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xcodec" or (errorHandler.buildDepError "xcodec"))
          (hsPkgs."basesystems" or (errorHandler.buildDepError "basesystems"))
          (hsPkgs."mfmts" or (errorHandler.buildDepError "mfmts"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
    };
  }