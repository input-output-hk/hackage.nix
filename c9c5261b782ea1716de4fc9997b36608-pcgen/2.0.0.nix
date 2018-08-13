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
        name = "pcgen";
        version = "2.0.0";
      };
      license = "Apache-2.0";
      copyright = "2017 Daniel Gee";
      maintainer = "zefria@gmail.com";
      author = "Daniel \"Lokathor\" Gee";
      homepage = "https://github.com/Lokathor/pcgen-hs";
      url = "";
      synopsis = "A fast, pseudorandom number generator.";
      description = "A fast pseudorandom number generator, as presented by M.E. O'Neill on\nhttp://www.pcg-random.org, See that site for information on the particulars\nof the technique used. This particular implementation uses two Word64 of\ninternal data and produces a Word32 of output per step. On 64-bit machines\nit's two to three times as fast as StdGen and uses the same amount of space.";
      buildType = "Simple";
    };
    components = {
      "pcgen" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
        ];
      };
      tests = {
        "pcgen-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pcgen)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
          ];
        };
      };
      benchmarks = {
        "pcgen-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pcgen)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.random)
          ];
        };
      };
    };
  }