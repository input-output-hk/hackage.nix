{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "super-user-spark";
          version = "0.2.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "";
        url = "";
        synopsis = "Configure your dotfile deployment with a DSL.";
        description = "Configure your dotfile deployment with a DSL.";
        buildType = "Simple";
      };
      components = {
        exes = {
          spark = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTF
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.shelly
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.zlib
            ];
          };
        };
        tests = {
          spark-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTF
              hsPkgs.HUnit
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.shelly
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.zlib
            ];
          };
        };
      };
    }