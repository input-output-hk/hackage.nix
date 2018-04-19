{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "b9";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "2015 Sven Heyll <svh@posteo.de>";
        maintainer = "svh@posteo.de";
        author = "Sven Heyll <svh@posteo.de>";
        homepage = "";
        url = "";
        synopsis = "A build tool for virtual machines.";
        description = "A tool for creating, modifying, running and sharing VM Images.";
        buildType = "Simple";
      };
      components = {
        b9 = {
          depends  = [
            hsPkgs.ConfigFile
            hsPkgs.QuickCheck
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.parsec
            hsPkgs.pretty-show
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.random
            hsPkgs.semigroups
            hsPkgs.syb
            hsPkgs.template
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.yaml
            hsPkgs.bifunctors
          ];
        };
        exes = {
          b9c = {
            depends  = [
              hsPkgs.b9
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.b9
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.yaml
              hsPkgs.vector
              hsPkgs.unordered-containers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.semigroups
            ];
          };
        };
      };
    }