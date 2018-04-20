{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "octohat";
          version = "0.1.5.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "hackage@stackbuilders.com";
        author = "Stack Builders";
        homepage = "https://github.com/stackbuilders/octohat";
        url = "";
        synopsis = "A tested, minimal wrapper around GitHub's API.";
        description = "A tested, minimal wrapper around GitHub's API.";
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
            hsPkgs.ghc-prim
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.wreq-sb
            hsPkgs.xmlhtml
          ];
        };
        exes = {
          abc = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.text
              hsPkgs.optparse-applicative
              hsPkgs.octohat
              hsPkgs.utf8-string
              hsPkgs.yaml
            ];
          };
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