{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "tensors"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/tensors#readme";
      url = "";
      synopsis = "Tensor in Haskell";
      description = "Tensor use type level programming in haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.deepseq) (hsPkgs.vector) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.hspec)
            (hsPkgs.reflection)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "bm" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }