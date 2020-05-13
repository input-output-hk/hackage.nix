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
      identifier = { name = "haskell-proxy-list"; version = "0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "contact@grzegorzgolda.com";
      author = "grzegorzgoldapl";
      homepage = "https://github.com/grzegorzgoldapl/haskell-proxy-list";
      url = "";
      synopsis = "Simple library for retrieving proxy servers info from https://proxy-list.org";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."base64-string" or (errorHandler.buildDepError "base64-string"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }