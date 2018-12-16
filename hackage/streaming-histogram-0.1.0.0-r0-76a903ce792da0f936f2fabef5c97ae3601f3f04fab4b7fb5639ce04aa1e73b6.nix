{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "streaming-histogram";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "tehunger@gmail.com";
      author = "Tom Hunger";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Inefficient implementation of a lossy online histogram\nalgorithm. See \"Numeric.StreamingHistogram\" for more.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.criterion)
        ];
      };
      tests = {
        "streaminghist-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.streaming-histogram)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.containers)
          ];
        };
      };
      benchmarks = {
        "streaminghist-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.streaming-histogram)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }