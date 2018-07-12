{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fluid-idl-http-client";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joe Vargas";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Http Client addon for Fluid";
        description = "Http Client addon for Fluid";
        buildType = "Simple";
      };
      components = {
        "fluid-idl-http-client" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.fluid-idl
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.text-conversions
          ];
        };
      };
    }