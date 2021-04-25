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
      identifier = { name = "request"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 An Long";
      maintainer = "aisk1988@gmail.com";
      author = "An Long";
      homepage = "https://github.com/aisk/request#readme";
      url = "";
      synopsis = "";
      description = "\"HTTP client for haskell, inpired by requests and http-dispatch.\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          ];
        buildable = true;
        };
      };
    }