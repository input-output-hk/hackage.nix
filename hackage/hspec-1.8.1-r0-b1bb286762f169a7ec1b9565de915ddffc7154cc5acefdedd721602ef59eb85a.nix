{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hspec"; version = "1.8.1"; };
      license = "MIT";
      copyright = "(c) 2011-2013 Simon Hengel,\n(c) 2011-2012 Trystan Spangler,\n(c) 2011 Greg Weber";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "Behavior-Driven Development for Haskell";
      description = "Behavior-Driven Development for Haskell\n\nHspec is roughly based on the Ruby library RSpec. However,\nHspec is just a framework for running HUnit and QuickCheck\ntests. Compared to other options, it provides a much nicer\nsyntax that makes tests very easy to read.\n\nThe Hspec Manual is at <http://hspec.github.io/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.setenv)
          (hsPkgs.ansi-terminal)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.deepseq)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-io)
          (hsPkgs.hspec-expectations)
          ];
        };
      exes = {
        "hspec-discover" = {
          depends = [ (hsPkgs.base) (hsPkgs.filepath) (hsPkgs.directory) ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.setenv)
            (hsPkgs.silently)
            (hsPkgs.ansi-terminal)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-io)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-meta)
            (hsPkgs.process)
            (hsPkgs.ghc-paths)
            ];
          };
        "doctests" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        "example" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) (hsPkgs.QuickCheck) ];
          };
        "hspec-discover-spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.hspec-meta)
            ];
          };
        "hspec-discover-example" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) (hsPkgs.QuickCheck) ];
          };
        "hspec-discover-integration-test-empty" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) ];
          };
        "hspec-discover-integration-test-with-formatter" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) ];
          };
        "hspec-discover-integration-test-with-io-formatter" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) (hsPkgs.transformers) ];
          };
        "hspec-discover-integration-test-with-formatter-empty" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) ];
          };
        };
      };
    }