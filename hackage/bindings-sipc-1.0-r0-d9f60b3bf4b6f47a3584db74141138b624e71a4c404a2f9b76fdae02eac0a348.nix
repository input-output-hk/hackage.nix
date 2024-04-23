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
      identifier = { name = "bindings-sipc"; version = "1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Justin Ethier <github.com/justinethier>";
      author = "Justin Ethier";
      homepage = "http://justinethier.github.com/hs-bindings-sipc";
      url = "";
      synopsis = "Low level bindings to SIPC. ";
      description = "Low level bindings for the SELinux Secure Inter-Process\nCommunications (SIPC) Library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."sipc" or (errorHandler.sysDepError "sipc")) ];
        buildable = true;
      };
      exes = {
        "MQCreator" = {
          depends = [
            (hsPkgs."bindings-sipc" or (errorHandler.buildDepError "bindings-sipc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "MQDestroyer" = {
          depends = [
            (hsPkgs."bindings-sipc" or (errorHandler.buildDepError "bindings-sipc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "MQReader" = {
          depends = [
            (hsPkgs."bindings-sipc" or (errorHandler.buildDepError "bindings-sipc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "MQSender" = {
          depends = [
            (hsPkgs."bindings-sipc" or (errorHandler.buildDepError "bindings-sipc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }