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
    flags = { cmd = true; };
    package = {
      specVersion = "1.20";
      identifier = { name = "openweathermap"; version = "0.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2017, Igor Pashev <pashev.igor@gmail.com>";
      maintainer = "Igor Pashev <pashev.igor@gmail.com>";
      author = "Igor Pashev";
      homepage = "";
      url = "";
      synopsis = "Access data at OpenWeatherMap";
      description = "Client library and command-line utility to access\nOpenWeatherMap https://openweathermap.org";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
        ];
        buildable = true;
      };
      exes = {
        "openweathermap" = {
          depends = pkgs.lib.optionals (flags.cmd) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."openweathermap" or (errorHandler.buildDepError "openweathermap"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          ];
          buildable = if flags.cmd then true else false;
        };
      };
    };
  }