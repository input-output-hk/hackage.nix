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
      identifier = { name = "gsasl"; version = "0.3.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "http://ianen.org/haskell/bindings/gsasl/";
      url = "";
      synopsis = "Bindings for GNU SASL";
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