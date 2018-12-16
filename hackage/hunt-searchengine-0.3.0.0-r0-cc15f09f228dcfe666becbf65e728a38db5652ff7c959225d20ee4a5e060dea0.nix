{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test-strict = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hunt-searchengine";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "Chris Reumann, Ulf Sauer, Uwe Schmidt";
      maintainer = "Chris Reumann, Ulf Sauer, Uwe Schmidt";
      author = "Chris Reumann, Ulf Sauer, Uwe Schmidt";
      homepage = "http://github.com/hunt-framework/";
      url = "";
      synopsis = "A search and indexing engine.";
      description = "The Hunt-Searchengine library provides a toolkit to\ncreate fast and flexible searchengines.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-r-tree)
          (hsPkgs.data-stringmap)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.hxt-regex-xmlschema)
          (hsPkgs.monad-parallel)
          (hsPkgs.mtl)
          (hsPkgs.murmur-hash)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "Hunt-Tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.hunt-searchengine)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.directory)
            (hsPkgs.data-default)
            (hsPkgs.data-r-tree)
            (hsPkgs.monad-parallel)
          ];
        };
        "Hunt-Strictness" = {
          depends = pkgs.lib.optionals (!(!flags.test-strict)) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-heap-view)
            (hsPkgs.HUnit)
            (hsPkgs.hunt-searchengine)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.monad-parallel)
            (hsPkgs.data-default)
          ];
        };
      };
    };
  }