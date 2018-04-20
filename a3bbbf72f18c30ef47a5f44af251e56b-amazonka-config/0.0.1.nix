{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-config";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Config SDK.";
        description = "Amazon Config is a fully managed service that provides you with an\nAmazon resource inventory, configuration history, and configuration\nchange notifications to enable security and governance. With Amazon\nConfig you can discover existing Amazon resources, export a complete\ninventory of your Amazon resources with all configuration details, and\ndetermine how a resource was configured at any point in time. These\ncapabilities enable compliance auditing, security analysis, resource\nchange tracking, and troubleshooting.\n\n/See:/ <http://docs.aws.amazon.com/config/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-config = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }