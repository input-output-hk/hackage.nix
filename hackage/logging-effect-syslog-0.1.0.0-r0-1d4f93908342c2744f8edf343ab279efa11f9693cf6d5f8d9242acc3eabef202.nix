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
      identifier = { name = "logging-effect-syslog"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "https://github.com/obsidiansystems/logging-effect-syslog";
      url = "";
      synopsis = "Log messages to a posix system log via logging-effect";
      description = "A 'Handler' for logging-effect that prints log messages to a posix system log";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
          ];
        buildable = true;
        };
      };
    }