{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec";
          version = "1.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011-2012 Trystan Spangler, (c) 2011-2012 Simon Hengel, (c) 2011 Greg Weber";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "http://hspec.github.com/";
        url = "";
        synopsis = "Behavior Driven Development for Haskell";
        description = "Behavior Driven Development for Haskell\n\nHspec is roughly based on the Ruby library RSpec. However,\nHspec is just a framework for running HUnit and QuickCheck\ntests. Compared to other options, it provides a much nicer\nsyntax that makes tests very easy to read.\n\nStart with the introductory documentation:\n<http://hspec.github.com/>";
        buildType = "Simple";
      };
      components = {
        hspec = {
          depends  = [
            hsPkgs.base
            hsPkgs.silently
            hsPkgs.ansi-terminal
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.hspec-expectations
          ];
        };
        exes = {
          hspec-discover = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.silently
              hsPkgs.ansi-terminal
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.hspec-expectations
              hsPkgs.hspec-meta
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
          example-non-monadic = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
          hspec-discover-spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.hspec-meta
            ];
          };
          hspec-discover-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
          hspec-discover-integration-test-empty = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
            ];
          };
        };
      };
    }