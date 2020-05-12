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
      identifier = { name = "hack-handler-evhttp"; version = "2009.7.29"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Bickford, Brandon <bickfordb@gmail.com>";
      author = "Bickford, Brandon <bickfordb@gmail.com>";
      homepage = "http://github.com/bickfordb/hack-handler-evhttp";
      url = "";
      synopsis = "Hack EvHTTP (libevent) Handler";
      description = "Hack EvHTTP (libevent) Handler";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-class" or (errorHandler.buildDepError "bytestring-class"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
          (hsPkgs."hack-contrib" or (errorHandler.buildDepError "hack-contrib"))
          ];
        libs = [ (pkgs."event" or (errorHandler.sysDepError "event")) ];
        buildable = true;
        };
      };
    }