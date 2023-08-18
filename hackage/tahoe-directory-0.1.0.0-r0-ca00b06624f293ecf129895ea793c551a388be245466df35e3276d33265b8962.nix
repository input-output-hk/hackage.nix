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
      identifier = { name = "tahoe-directory"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 The Authors";
      maintainer = "exarkun@twistedmatrix.com";
      author = "Jean-Paul Calderone and others";
      homepage = "https://whetstone.private.storage/PrivateStorage/tahoe-directory";
      url = "";
      synopsis = "Tahoe-LAFS directory-like abstraction for collections of data objects.";
      description = "Tahoe-Directory is an implementation of the Tahoe-LAFS filesystem directory-like abstraction for managing collections of data objects.\nThis includes a parser and serializer for the persisted form of these collections.\nIt also includes Haskell-friendly abstract representations of and operations on the data.\nIt aims for bit-for-bit compatibility with the original Python implementation.\nIt will not include an implementation of any network protocol for transferring directories.\nHowever, its APIs are intended to be easy to integrate with such an implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."tahoe-capabilities" or (errorHandler.buildDepError "tahoe-capabilities"))
          (hsPkgs."tahoe-chk" or (errorHandler.buildDepError "tahoe-chk"))
          (hsPkgs."tahoe-ssk" or (errorHandler.buildDepError "tahoe-ssk"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tahoe-directory-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."tahoe-capabilities" or (errorHandler.buildDepError "tahoe-capabilities"))
            (hsPkgs."tahoe-directory" or (errorHandler.buildDepError "tahoe-directory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }