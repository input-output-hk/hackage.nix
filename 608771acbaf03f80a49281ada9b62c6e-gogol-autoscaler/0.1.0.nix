{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gogol-autoscaler";
          version = "0.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2015-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/gogol";
        url = "";
        synopsis = "Google Compute Engine Autoscaler SDK.";
        description = "The Google Compute Engine Autoscaler API provides autoscaling for groups\nof Cloud VMs.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1beta2@\nof the API.\n\nLabels:\n\n* Limited Availability";
        buildType = "Simple";
      };
      components = {
        gogol-autoscaler = {
          depends  = [
            hsPkgs.gogol-core
            hsPkgs.base
          ];
        };
      };
    }