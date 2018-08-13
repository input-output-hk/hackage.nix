{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "incremental-parser";
        version = "0.3.1";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2011-2018 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "https://github.com/blamario/incremental-parser";
      url = "";
      synopsis = "Generic parser library capable of providing partial results from partial input.";
      description = "This package defines yet another parser combinator library. This one is implemented using the concept of Brzozowski\nderivatives, tweaked and optimized to work with any monoidal input type. Lists, ByteString, and Text are supported out\nof the box, as well as any other data type for which the monoid-subclasses package defines instances. If the parser\nresult is also a monoid, its chunks can be extracted incrementally, before the complete input is parsed.";
      buildType = "Simple";
    };
    components = {
      "incremental-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monoid-subclasses)
        ];
      };
      tests = {
        "Main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.monoid-subclasses)
            (hsPkgs.QuickCheck)
            (hsPkgs.checkers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "CSV" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.monoid-subclasses)
            (hsPkgs.incremental-parser)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.text)
          ];
        };
      };
    };
  }