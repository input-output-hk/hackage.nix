{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HGraphStorage";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "JP Moresmau 2014-2015";
      maintainer = "JP Moresmau <jp@moresmau.fr>";
      author = "JP Moresmau <jp@moresmau.fr>";
      homepage = "https://github.com/JPMoresmau/HGraphStorage";
      url = "";
      synopsis = "Graph database stored on disk";
      description = "A graph database storing its data on disk.\nThere is currently no transaction or even concurrent access support, this is not made for production.\nWe try to store the data on disk efficiently, i.e. not rely on having the data in memory.\nThere is a test suite and a benchmark, which would be the best way to get a feel for how the library works.";
      buildType = "Simple";
    };
    components = {
      "HGraphStorage" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.data-default)
          (hsPkgs.containers)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.resourcet)
        ];
      };
      tests = {
        "hgraphstorage-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HGraphStorage)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.data-default)
            (hsPkgs.containers)
            (hsPkgs.lifted-base)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.resourcet)
          ];
        };
      };
      benchmarks = {
        "HGraphStorage-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HGraphStorage)
            (hsPkgs.bytestring)
            (hsPkgs.zlib)
            (hsPkgs.tar)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.monad-logger)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.text-binary)
            (hsPkgs.data-default)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }