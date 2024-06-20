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
      identifier = { name = "libssh"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "defanor@thunix.net";
      author = "defanor";
      homepage = "";
      url = "";
      synopsis = "libssh bindings";
      description = "libssh bindings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libssh" or (errorHandler.pkgConfDepError "libssh"))
        ];
        buildable = true;
      };
    };
  }