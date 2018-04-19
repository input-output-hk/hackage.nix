{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-hastache";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2012 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "https://github.com/singpolyma/wai-hastache";
        url = "";
        synopsis = "Nice wrapper around hastache for use with WAI";
        description = "Provides smart constructors for WAI responses using Hastache for\nrendering mustache templates.";
        buildType = "Simple";
      };
      components = {
        wai-hastache = {
          depends  = [
            hsPkgs.base
            hsPkgs.hastache
            hsPkgs.wai
            hsPkgs.http-types
            hsPkgs.bytestring
            hsPkgs.transformers
          ];
        };
      };
    }