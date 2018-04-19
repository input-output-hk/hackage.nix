{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec";
          version = "0.9.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Trystan Spangler";
        maintainer = "trystan.s@comcast.net";
        author = "Trystan Spangler";
        homepage = "";
        url = "";
        synopsis = "Behavior Driven Development for Haskell";
        description = "Behavior Driven Development for Haskell\n\nHspec is roughly based on the Ruby library RSpec. However, Hspec is just a framework for running HUnit and QuickCheck tests. Compared to other options, it provides a much nicer syntax that makes tests very easy to read.";
        buildType = "Simple";
      };
      components = {
        hspec = {
          depends  = [
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.silently
            hsPkgs.ansi-terminal
            hsPkgs.transformers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.silently
              hsPkgs.ansi-terminal
              hsPkgs.transformers
            ];
          };
        };
      };
    }