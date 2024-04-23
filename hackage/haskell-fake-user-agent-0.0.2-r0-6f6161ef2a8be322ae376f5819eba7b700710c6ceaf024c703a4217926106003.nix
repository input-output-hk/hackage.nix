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
      identifier = { name = "haskell-fake-user-agent"; version = "0.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "contact@grzegorzgolda.com";
      author = "grzegorzgoldapl";
      homepage = "";
      url = "";
      synopsis = "Simple library for retrieving current user agent strings";
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
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
        ];
        buildable = true;
      };
    };
  }