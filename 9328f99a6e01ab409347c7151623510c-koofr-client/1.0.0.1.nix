{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "koofr-client";
          version = "1.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "edofic@gmail.com";
        author = "Andraz Bajt";
        homepage = "https://github.com/edofic/koofr-api-hs";
        url = "";
        synopsis = "Client to Koofr API";
        description = "Koofr is a storage as a service provider located in Europe. See https://koofr.eu for more info. This is an API wrapper that simplifies working with files.\nFilesystem roots are called mounts and cannot be manipulated through api.\nThe API is contained in a type class in order to allow mocking. Mock runner and wider API coverage coming soon.";
        buildType = "Simple";
      };
      components = {
        "koofr-client" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.http-client-tls
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.filepath
          ];
        };
      };
    }