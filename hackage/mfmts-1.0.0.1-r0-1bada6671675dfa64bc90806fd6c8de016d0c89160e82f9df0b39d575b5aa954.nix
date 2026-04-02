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
    flags = { ci = false; dev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "mfmts"; version = "1.0.0.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basesystems" or (errorHandler.buildDepError "basesystems"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."ram" or (errorHandler.buildDepError "ram"))
        ];
        buildable = true;
      };
    };
  }