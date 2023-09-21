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
      specVersion = "3.0";
      identifier = {
        name = "http-exchange-instantiations";
        version = "0.1.2.1";
        };
      license = "BSD-3-Clause";
      copyright = "2023 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "";
      url = "";
      synopsis = "Instantiations of http-exchange";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-exchange-instantiations".components.sublibs.chanimpl or (errorHandler.buildDepError "http-exchange-instantiations:chanimpl"))
          (hsPkgs."http-exchange" or (errorHandler.buildDepError "http-exchange"))
          (hsPkgs."http-interchange" or (errorHandler.buildDepError "http-interchange"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."network-unexceptional" or (errorHandler.buildDepError "network-unexceptional"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      sublibs = {
        "chanimpl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-unexceptional" or (errorHandler.buildDepError "network-unexceptional"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      exes = {
        "http-insecure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."http-interchange" or (errorHandler.buildDepError "http-interchange"))
            (hsPkgs."http-exchange-instantiations" or (errorHandler.buildDepError "http-exchange-instantiations"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            ];
          buildable = true;
          };
        "http-secure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."http-interchange" or (errorHandler.buildDepError "http-interchange"))
            (hsPkgs."http-exchange-instantiations" or (errorHandler.buildDepError "http-exchange-instantiations"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        };
      };
    }