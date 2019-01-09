{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "intset-imperative"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Henri Verroken";
      maintainer = "henriverroken@gmail.com";
      author = "Henri Verroken";
      homepage = "https://github.com/hverr/haskell-intset-imperative#readme";
      url = "";
      synopsis = "An imperative integer set written in Haskell.";
      description = "An imperative integer set written in Haskell.\n\nRead <https://deliquus.com/posts/2018-07-30-imperative-programming-in-haskell.html> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.deepseq) (hsPkgs.primitive) ];
        };
      tests = {
        "intset-imperative-test-random" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.intset-imperative)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "intset-imperative-test-fixed" = {
          depends = [ (hsPkgs.base) (hsPkgs.intset-imperative) ];
          };
        };
      benchmarks = {
        "intset-imperative-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.intset-imperative)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.random)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }