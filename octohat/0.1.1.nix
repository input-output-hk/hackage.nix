{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "octohat";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "hackage@stackbuilders.com";
        author = "Stack Builders";
        homepage = "https://github.com/stackbuilders/octohat";
        url = "";
        synopsis = "A tested, minimal wrapper around GitHub's API.";
        description = "";
        buildType = "Simple";
      };
      components = {
        octohat = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cryptohash
            hsPkgs.dotenv
            hsPkgs.either
            hsPkgs.errors
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.wreq
            hsPkgs.xmlhtml
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.text
              hsPkgs.dotenv
              hsPkgs.transformers
              hsPkgs.octohat
            ];
          };
        };
      };
    }