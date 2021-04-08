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
      identifier = { name = "katip-syslog"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 IRIS Connect Engineering Team";
      maintainer = "chrisd@irisconnect.co.uk";
      author = "Alfredo Di Napoli";
      homepage = "https://github.com/iconnect/katip-syslog#readme";
      url = "";
      synopsis = "Syslog Katip Scribe";
      description = "A simple Katip Scribe which logs to syslog";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."katip" or (errorHandler.buildDepError "katip"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "katip-syslog-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."katip-syslog" or (errorHandler.buildDepError "katip-syslog"))
            ];
          buildable = true;
          };
        };
      };
    }