{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "colorless-http-client";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joe Vargas";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Http Client addon for Colorless";
        description = "Http Client addon for Colorless";
        buildType = "Simple";
      };
      components = {
        "colorless-http-client" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.colorless
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.text-conversions
          ];
        };
      };
    }