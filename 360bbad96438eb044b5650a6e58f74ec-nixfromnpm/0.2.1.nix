{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nixfromnpm";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "anelson@narrativescience.com";
        author = "Allen Nelson";
        homepage = "";
        url = "";
        synopsis = "Generate nix expressions from npm packages.";
        description = "Given an npm package name and one or more npm repositories, will dump out a\ncollection of nix files, one each for the initial package and all of its\ndependencies. Will generate a top-level 'default.nix' which returns a set\ncontaining all of these expressions. Subsequent invocations of the program\nusing the same target directory will result in re-use of the existing files,\nto avoid unnecessary duplication.";
        buildType = "Simple";
      };
      components = {
        nixfromnpm = {
          depends  = [
            hsPkgs.base
            hsPkgs.classy-prelude
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.unordered-containers
            hsPkgs.containers
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
            hsPkgs.hnix
            hsPkgs.optparse-applicative
          ];
        };
        exes = {
          nixfromnpm = {
            depends  = [
              hsPkgs.base
              hsPkgs.classy-prelude
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.unordered-containers
              hsPkgs.containers
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
              hsPkgs.hnix
              hsPkgs.nixfromnpm
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.classy-prelude
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.unordered-containers
              hsPkgs.containers
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
              hsPkgs.hnix
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }