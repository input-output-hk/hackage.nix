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
      identifier = { name = "tahoe-capabilities"; version = "0.1.0.0"; };
      license = "LGPL-3.0-or-later";
      copyright = "";
      maintainer = "exarkun@twistedmatrix.com";
      author = "Jean-Paul Calderone";
      homepage = "https://whetstone.private.storage/PrivateStorage/tahoe-capabilities";
      url = "";
      synopsis = "Abstractions related to Tahoe-LAFS \"capabilities\".";
      description = "Tahoe-LAFS LIT, CHK, SDMF, and MDMF capabilities offer varying functionality\nfor interacting with encrypted data.  This library provides abstractions for\nfunctionality common to all of these capability types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tahoe-capabilities-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tahoe-capabilities" or (errorHandler.buildDepError "tahoe-capabilities"))
            ];
          buildable = true;
          };
        };
      };
    }