{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cmd = true; };
    package = {
      specVersion = "1.20";
      identifier = { name = "openweathermap"; version = "0.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          ];
        buildable = true;
        };
      exes = {
        "openweathermap" = {
          depends = (pkgs.lib).optionals (flags.cmd) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."openweathermap" or ((hsPkgs.pkgs-errors).buildDepError "openweathermap"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."xdg-basedir" or ((hsPkgs.pkgs-errors).buildDepError "xdg-basedir"))
            ];
          buildable = if flags.cmd then true else false;
          };
        };
      };
    }