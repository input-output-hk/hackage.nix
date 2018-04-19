{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      cmd = true;
    } // flags;
    in {
      package = {
        specVersion = "1.20";
        identifier = {
          name = "openweathermap";
          version = "0.0.0";
        };
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
        openweathermap = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.http-client
            hsPkgs.servant
            hsPkgs.servant-client
          ];
        };
        exes = {
          openweathermap = {
            depends  = pkgs.lib.optionals _flags.cmd [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.openweathermap
              hsPkgs.optparse-applicative
              hsPkgs.xdg-basedir
            ];
          };
        };
      };
    }