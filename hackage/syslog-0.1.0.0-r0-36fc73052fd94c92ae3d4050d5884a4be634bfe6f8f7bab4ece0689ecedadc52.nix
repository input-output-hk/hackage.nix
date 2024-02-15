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
      specVersion = "2.4";
      identifier = { name = "syslog"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrew Martin";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/syslog";
      url = "";
      synopsis = "Decode RFC 3164 and RFC 5424 syslog message formats";
      description = "Decode syslog messages that were formatted using RFC 3164 (BSD-syslog) or\nRFC 5424 (IETF-syslog).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."bytesmith" or (errorHandler.buildDepError "bytesmith"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."run-st" or (errorHandler.buildDepError "run-st"))
          (hsPkgs."unpacked-maybe-numeric" or (errorHandler.buildDepError "unpacked-maybe-numeric"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."syslog" or (errorHandler.buildDepError "syslog"))
            ];
          buildable = true;
          };
        };
      };
    }