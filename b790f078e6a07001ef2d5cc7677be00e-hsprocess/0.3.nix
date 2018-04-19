{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsprocess";
          version = "0.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "pastorelli.mario@gmail.com";
        author = "Mario Pastorelli";
        homepage = "";
        url = "";
        synopsis = "The Haskell Stream Processor command line utility";
        description = "The Haskell Stream Processor is a command line utility to\nprocess streams using Haskell code. It is intended to be used\nin a UNIX pipeline. It offers a configuration system to\npersonalize imported modules and a way to represent values\non the console.";
        buildType = "Simple";
      };
      components = {
        hsprocess = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
          ];
        };
        exes = {
          hsp = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.easy-file
              hsPkgs.filepath
              hsPkgs.hint
              hsPkgs.MonadCatchIO-mtl
              hsPkgs.stringsearch
              hsPkgs.process
              hsPkgs.time
            ];
          };
        };
        tests = {
          reference = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }