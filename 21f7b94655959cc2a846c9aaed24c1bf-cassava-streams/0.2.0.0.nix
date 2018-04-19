{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      maintainer = false;
      tutorial = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "cassava-streams";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014-2016 Peter Jones";
        maintainer = "Peter Jones <pjones@devalot.com>";
        author = "Peter Jones <pjones@devalot.com>";
        homepage = "https://github.com/pjones/cassava-streams";
        url = "";
        synopsis = "io-streams interface for the cassava CSV library.";
        description = "The cassava-streams library glues togeter the cassava CSV library\nand the io-streams streaming library.\n\nSee the \"System.IO.Streams.Csv.Tutorial\" module for a simple tutorial.";
        buildType = "Simple";
      };
      components = {
        cassava-streams = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cassava
            hsPkgs.io-streams
            hsPkgs.vector
          ];
        };
        exes = {
          tutorial = {
            depends  = optionals (!(!_flags.tutorial)) [
              hsPkgs.base
              hsPkgs.cassava-streams
              hsPkgs.io-streams
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.cassava
              hsPkgs.cassava-streams
              hsPkgs.io-streams
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.vector
            ];
          };
        };
      };
    }