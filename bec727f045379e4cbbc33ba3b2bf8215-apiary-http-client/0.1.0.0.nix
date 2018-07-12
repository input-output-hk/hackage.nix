{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-http-client";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "winterland1989@gmail.com";
        author = "winterland";
        homepage = "https://github.com/winterland1989/apiary-http-client";
        url = "";
        synopsis = "A http client for Apiary.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "apiary-http-client" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.types-compat
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.apiary
            hsPkgs.wai
            hsPkgs.data-default-class
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }