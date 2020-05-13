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
      specVersion = "1.10";
      identifier = { name = "regex-do"; version = "1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Imants Cekusins";
      author = "Imants Cekusins";
      homepage = "https://github.com/ciez/regex-do";
      url = "";
      synopsis = "PCRE regex funs";
      description = "Convenience functions to search, replace, format String | ByteString with PCRE regex";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."regex-do" or (errorHandler.buildDepError "regex-do"))
            ];
          buildable = true;
          };
        };
      };
    }