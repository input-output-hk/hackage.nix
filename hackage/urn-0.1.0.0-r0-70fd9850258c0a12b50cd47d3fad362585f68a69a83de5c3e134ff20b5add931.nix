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
      specVersion = "1.8";
      identifier = { name = "urn"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Sam Truzjan";
      maintainer = "pxqr.sta@gmail.com";
      author = "Sam Truzjan";
      homepage = "https://github.com/pxqr/urn";
      url = "";
      synopsis = "Universal Resource Names";
      description = "URN parsing and rendering according to RFC 2141. For more info see\n<http://tools.ietf.org/html/rfc2141>.\n\nIf you need to represent both URLs and URIs then use\n\"Network.URI\" from the @network@ package or \"Data.URI\" from the\n@uri@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."urn" or (errorHandler.buildDepError "urn"))
          ];
          buildable = true;
        };
      };
    };
  }