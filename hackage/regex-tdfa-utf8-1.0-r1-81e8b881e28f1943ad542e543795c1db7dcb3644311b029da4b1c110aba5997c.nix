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
      specVersion = "1.2";
      identifier = { name = "regex-tdfa-utf8"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@list.mightyreason.com";
      author = "Chris Kuklewicz";
      homepage = "";
      url = "";
      synopsis = "This combines regex-tdfa with utf8-string to allow searching over UTF8 encoded lazy bytestrings.";
      description = "This combines regex-tdfa with utf8-string to allow searching over UTF8 encoded lazy bytestrings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          ];
        buildable = true;
        };
      };
    }