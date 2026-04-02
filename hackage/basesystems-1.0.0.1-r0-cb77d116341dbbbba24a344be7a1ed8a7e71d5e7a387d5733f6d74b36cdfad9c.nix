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
      identifier = { name = "basesystems"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "zoeymcbride@mailbox.org";
      author = "Zoey McBride";
      homepage = "";
      url = "";
      synopsis = "Implements encoders/decoders for basesystems";
      description = "This package implements encoder and decoder methods for numeric basesystems\nand provides definitions for common basesystems like base16, base58btc,\nbase64, and more.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }