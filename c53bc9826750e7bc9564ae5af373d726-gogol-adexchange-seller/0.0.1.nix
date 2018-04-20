{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gogol-adexchange-seller";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/gogol";
        url = "";
        synopsis = "Google Ad Exchange Seller SDK.";
        description = "Gives Ad Exchange seller users access to their inventory and the ability\nto generate reports\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v2.0@\nof the API.";
        buildType = "Simple";
      };
      components = {
        gogol-adexchange-seller = {
          depends  = [
            hsPkgs.gogol-core
            hsPkgs.base
          ];
        };
      };
    }