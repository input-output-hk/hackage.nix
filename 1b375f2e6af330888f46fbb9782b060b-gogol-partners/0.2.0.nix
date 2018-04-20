{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gogol-partners";
          version = "0.2.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2015-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/gogol";
        url = "";
        synopsis = "Google Partners SDK.";
        description = "Lets advertisers search certified companies and create contact leads\nwith them, and also audits the usage of clients.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v2@\nof the API.";
        buildType = "Simple";
      };
      components = {
        gogol-partners = {
          depends  = [
            hsPkgs.gogol-core
            hsPkgs.base
          ];
        };
      };
    }