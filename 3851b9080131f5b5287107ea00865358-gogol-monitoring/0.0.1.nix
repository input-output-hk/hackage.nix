{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gogol-monitoring";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/gogol";
        url = "";
        synopsis = "Google Cloud Monitoring SDK.";
        description = "API for accessing Google Cloud and API monitoring data.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v2beta2@\nof the API.";
        buildType = "Simple";
      };
      components = {
        gogol-monitoring = {
          depends  = [
            hsPkgs.gogol-core
            hsPkgs.base
          ];
        };
      };
    }