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
      identifier = { name = "hsyslog-tcp"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Ömer Sinan Ağacan";
      maintainer = "omeragacan@gmail.com";
      author = "Ömer Sinan Ağacan";
      homepage = "https://github.com/osa1/hsyslog-tcp#readme";
      url = "";
      synopsis = "syslog over TCP";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          (hsPkgs."hsyslog-udp" or (errorHandler.buildDepError "hsyslog-udp"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }