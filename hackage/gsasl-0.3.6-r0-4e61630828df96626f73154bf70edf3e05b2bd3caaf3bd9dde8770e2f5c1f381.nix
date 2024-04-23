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
      specVersion = "1.6";
      identifier = { name = "gsasl"; version = "0.3.6"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <john@john-millikin.com>";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://john-millikin.com/software/haskell-gsasl/";
      url = "";
      synopsis = "Bindings for GNU libgsasl";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libgsasl" or (errorHandler.pkgConfDepError "libgsasl"))
        ];
        buildable = true;
      };
    };
  }