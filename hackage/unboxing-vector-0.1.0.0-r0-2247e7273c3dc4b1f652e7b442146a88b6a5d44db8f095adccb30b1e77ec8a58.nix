{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "unboxing-vector"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 ARATA Mizuki";
      maintainer = "ARATA Mizuki <minorinoki@gmail.com>";
      author = "ARATA Mizuki <minorinoki@gmail.com>";
      homepage = "https://github.com/minoki/unboxing-vector#readme";
      url = "";
      synopsis = "Newtype-friendly Unboxed Vectors";
      description = "Please see the README on GitHub at <https://github.com/minoki/unboxing-vector#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.mono-traversable)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "unboxing-vector-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.mono-traversable)
            (hsPkgs.primitive)
            (hsPkgs.should-not-typecheck)
            (hsPkgs.unboxing-vector)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "unboxing-vector-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.mono-traversable)
            (hsPkgs.primitive)
            (hsPkgs.unboxing-vector)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }