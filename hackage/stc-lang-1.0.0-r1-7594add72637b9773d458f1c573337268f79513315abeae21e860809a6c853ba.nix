{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug-sched = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "stc-lang"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 Norman Rink, Sebastian Ertel, Justus Adam";
      maintainer = "justus.adam@tu-dresden.de";
      author = "Norman Rink, Sebastian Ertel, Justus Adam";
      homepage = "https://github.com/ohua-dev/stc-lang#readme";
      url = "";
      synopsis = "A library for implicit, monadic dataflow parallelism";
      description = "See the <https://github.com/ohua-dev/stc-lang#readme readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.BoundedChan)
          (hsPkgs.abstract-par)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.microlens)
          (hsPkgs.monad-par)
          (hsPkgs.monad-par-extras)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "ohua-stream-bench" = {
          depends = [
            (hsPkgs.BoundedChan)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.clock)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.hedis)
            (hsPkgs.hw-kafka-client)
            (hsPkgs.microlens)
            (hsPkgs.microlens-aeson)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.stc-lang)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.uuid-types)
            (hsPkgs.vector)
            (hsPkgs.yaml)
            ];
          };
        };
      tests = {
        "statefulness-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.microlens)
            (hsPkgs.mtl)
            (hsPkgs.stc-lang)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }