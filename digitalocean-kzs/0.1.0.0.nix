{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "digitalocean-kzs";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "r.nakamura1989@gmail.com";
        author = "Ryotaro NAKAMURA";
        homepage = "https://github.com/KazumaSATO/digitalocean-kzs";
        url = "";
        synopsis = "digitalocean api for haskell";
        description = "DigitalOcean api for haskell";
        buildType = "Simple";
      };
      components = {
        digitalocean-kzs = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.HTTP
            hsPkgs.http-conduit
            hsPkgs.http-types
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.digitalocean-kzs
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }