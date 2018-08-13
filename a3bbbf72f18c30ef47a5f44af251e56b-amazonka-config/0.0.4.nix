{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-config";
        version = "0.0.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Config SDK.";
      description = "Amazon Config is a fully managed service that provides you with an Amazon\nresource inventory, configuration history, and configuration change\nnotifications to enable security and governance. With Amazon Config you can\ndiscover existing Amazon resources, export a complete inventory of your\nAmazon resources with all configuration details, and determine how a resource\nwas configured at any point in time. These capabilities enable compliance\nauditing, security analysis, resource change tracking, and troubleshooting.\n\n/See:/ <http://docs.aws.amazon.com/config/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "amazonka-config" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }