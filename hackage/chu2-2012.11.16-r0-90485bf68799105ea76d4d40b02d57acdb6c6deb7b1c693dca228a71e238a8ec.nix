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
      identifier = { name = "chu2"; version = "2012.11.16"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/chu2";
      url = "";
      synopsis = "FFI for Chu2 Agda Web Server Interface";
      description = "FFI for Chu2 Agda Web Server Interface";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hack2" or (errorHandler.buildDepError "hack2"))
          (hsPkgs."hack2-handler-snap-server" or (errorHandler.buildDepError "hack2-handler-snap-server"))
        ];
        buildable = true;
      };
    };
  }