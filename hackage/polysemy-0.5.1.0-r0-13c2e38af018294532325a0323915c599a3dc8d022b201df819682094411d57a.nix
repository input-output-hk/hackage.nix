{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dump-core = false; error-messages = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "polysemy"; version = "0.5.1.0"; };
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
        depends = ([
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.first-class-families)
          (hsPkgs.mtl)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.th-abstraction)
          (hsPkgs.transformers)
          (hsPkgs.unagi-chan)
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs.dump-core)) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.2.2") (hsPkgs.unsupported-ghc-version);
        };
      tests = {
        "polysemy-test" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.doctest)
            (hsPkgs.first-class-families)
            (hsPkgs.hspec)
            (hsPkgs.inspection-testing)
            (hsPkgs.mtl)
            (hsPkgs.polysemy)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.th-abstraction)
            (hsPkgs.transformers)
            (hsPkgs.unagi-chan)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      benchmarks = {
        "polysemy-bench" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.first-class-families)
            (hsPkgs.free)
            (hsPkgs.freer-simple)
            (hsPkgs.mtl)
            (hsPkgs.polysemy)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.th-abstraction)
            (hsPkgs.transformers)
            (hsPkgs.unagi-chan)
            ];
          };
        };
      };
    }