{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dump-core = false; error-messages = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "polysemy"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/polysemy#readme";
      url = "";
      synopsis = "Higher-order, low-boilerplate, zero-cost free monads.";
      description = "Please see the README on GitHub at <https://github.com/isovector/polysemy#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs.dump-core);
        };
      tests = {
        "polysemy-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.inspection-testing)
            (hsPkgs.mtl)
            (hsPkgs.polysemy)
            (hsPkgs.random)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            ];
          };
        };
      benchmarks = {
        "polysemy-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.free)
            (hsPkgs.freer-simple)
            (hsPkgs.mtl)
            (hsPkgs.polysemy)
            (hsPkgs.random)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }