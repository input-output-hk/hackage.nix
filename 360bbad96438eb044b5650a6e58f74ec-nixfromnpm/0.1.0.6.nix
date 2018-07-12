{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nixfromnpm";
          version = "0.1.0.6";
        };
        license = "MIT";
        copyright = "";
        maintainer = "anelson@narrativescience.com";
        author = "Allen Nelson";
        homepage = "";
        url = "";
        synopsis = "Generate nix expressions from npm packages.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "nixfromnpm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.classy-prelude
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.unordered-containers
            hsPkgs.parsec
            hsPkgs.aeson
            hsPkgs.data-default
            hsPkgs.shelly
            hsPkgs.MissingH
            hsPkgs.error-list
            hsPkgs.text-render
            hsPkgs.system-filepath
            hsPkgs.filepath
            hsPkgs.network-uri
            hsPkgs.directory
            hsPkgs.simple-nix
          ];
        };
        exes = {
          "nixfromnpm" = {
            depends  = [
              hsPkgs.base
              hsPkgs.classy-prelude
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.unordered-containers
              hsPkgs.parsec
              hsPkgs.aeson
              hsPkgs.data-default
              hsPkgs.shelly
              hsPkgs.MissingH
              hsPkgs.error-list
              hsPkgs.text-render
              hsPkgs.system-filepath
              hsPkgs.filepath
              hsPkgs.network-uri
              hsPkgs.directory
              hsPkgs.simple-nix
              hsPkgs.docopt
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.classy-prelude
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.unordered-containers
              hsPkgs.parsec
              hsPkgs.io-streams
              hsPkgs.http-client-streams
              hsPkgs.aeson
              hsPkgs.data-default
              hsPkgs.shelly
              hsPkgs.MissingH
              hsPkgs.github
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.error-list
              hsPkgs.text-render
              hsPkgs.system-filepath
              hsPkgs.filepath
              hsPkgs.network-uri
              hsPkgs.directory
              hsPkgs.simple-nix
            ];
          };
        };
      };
    }