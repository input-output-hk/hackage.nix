{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-util";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2012 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "https://github.com/singpolyma/wai-util";
        url = "";
        synopsis = "Collection of utility functions for use with WAI";
        description = "Utility functions for use with WAI that haven't found another home\nyet.";
        buildType = "Simple";
      };
      components = {
        wai-util = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.resourcet
            hsPkgs.conduit
            hsPkgs.aeson
            hsPkgs.transformers
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.case-insensitive
            hsPkgs.mime-mail
            hsPkgs.network
            hsPkgs.http-types
          ];
        };
      };
    }