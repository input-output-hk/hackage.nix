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
      identifier = { name = "hack-middleware-jsonp"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/hack-middleware-jsonp/tree/master";
      url = "";
      synopsis = "Automatic wrapping of JSON responses to convert into JSONP. (deprecated)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-class" or (errorHandler.buildDepError "bytestring-class"))
          (hsPkgs."web-encodings" or (errorHandler.buildDepError "web-encodings"))
          (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
        ];
        buildable = true;
      };
    };
  }