{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "puffytools";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Peter Harpending";
        maintainer = "pharpend2@gmail.com";
        author = "Peter Harpending";
        homepage = "https://github.com/pharpend/puffytools";
        url = "";
        synopsis = "A CLI assistant";
        description = "A CLI-based \"personal assistant.\" It will keep journal entries, remind you of\nthings, remind others of things, keep dates for you, etc.";
        buildType = "Simple";
      };
      components = {
        puffytools = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.bytestring
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.MissingH
            hsPkgs.random-fu
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
          ];
        };
        exes = {
          ptk = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.console-program
              hsPkgs.directory
              hsPkgs.old-locale
              hsPkgs.puffytools
              hsPkgs.vector
              hsPkgs.time
              hsPkgs.text
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.puffytools
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
              hsPkgs.time
              hsPkgs.vector
            ];
          };
        };
      };
    }