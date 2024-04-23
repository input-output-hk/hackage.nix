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
      identifier = { name = "wilton-ffi"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2018 alex at staticlibs.net";
      maintainer = "alex at staticlibs.net";
      author = "alex at staticlibs.net";
      homepage = "https://github.com/wilton-iot/wilton-ffi#readme";
      url = "";
      synopsis = "Haskell modules support for Wilton JavaScript runtime";
      description = "Please see the README on GitHub at <https://github.com/wilton-iot/wilton-ffi#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        buildable = true;
      };
    };
  }