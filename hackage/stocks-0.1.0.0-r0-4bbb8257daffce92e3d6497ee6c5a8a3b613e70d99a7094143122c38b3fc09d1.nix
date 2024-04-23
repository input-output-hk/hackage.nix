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
      identifier = { name = "stocks"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 David Bouchare";
      maintainer = "David Bouchare";
      author = "David Bouchare";
      homepage = "https://github.com/dabcoder/stocks#readme";
      url = "";
      synopsis = "Library for the IEX Trading API";
      description = "Simple library for interacting with the IEX Trading API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
    };
  }