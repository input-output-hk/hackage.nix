{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      use-reflex-optimizer = false;
      use-template-haskell = true;
      debug-trace-events = false;
      fast-weak = false;
      };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "reflex"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "https://reflex-frp.org";
      url = "";
      synopsis = "Higher-order Functional Reactive Programming";
      description = "Reflex is a high-performance, deterministic, higher-order Functional Reactive Programming system";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs.MemoTrie)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.dependent-map)
          (hsPkgs.exception-transformers)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.monoidal-containers)
          (hsPkgs.mtl)
          (hsPkgs.prim-uniq)
          (hsPkgs.primitive)
          (hsPkgs.random)
          (hsPkgs.ref-tf)
          (hsPkgs.reflection)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.syb)
          (hsPkgs.these)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.unbounded-delays)
          (hsPkgs.witherable)
          ] ++ (pkgs.lib).optional (flags.debug-trace-events) (hsPkgs.bytestring)) ++ (pkgs.lib).optional (flags.use-reflex-optimizer) (hsPkgs.ghc)) ++ (if flags.use-template-haskell
          then [
            (hsPkgs.dependent-sum)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.template-haskell)
            ]
          else [
            (hsPkgs.dependent-sum)
            ])) ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-base);
        };
      tests = {
        "semantics" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.dependent-map)
            (hsPkgs.dependent-sum)
            (hsPkgs.mtl)
            (hsPkgs.ref-tf)
            (hsPkgs.reflex)
            (hsPkgs.split)
            (hsPkgs.transformers)
            ];
          };
        "CrossImpl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.dependent-map)
            (hsPkgs.dependent-sum)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.ref-tf)
            (hsPkgs.reflex)
            ];
          };
        "hlint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.filemanip)
            (hsPkgs.hlint)
            ];
          };
        "EventWriterT" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.dependent-map)
            (hsPkgs.dependent-sum)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.these)
            (hsPkgs.transformers)
            (hsPkgs.reflex)
            (hsPkgs.ref-tf)
            ];
          };
        "RequesterT" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.dependent-sum)
            (hsPkgs.dependent-map)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.these)
            (hsPkgs.transformers)
            (hsPkgs.reflex)
            (hsPkgs.ref-tf)
            ];
          };
        "QueryT" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.dependent-map)
            (hsPkgs.dependent-sum)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.monoidal-containers)
            (hsPkgs.mtl)
            (hsPkgs.ref-tf)
            (hsPkgs.reflex)
            (hsPkgs.semigroups)
            (hsPkgs.these)
            (hsPkgs.transformers)
            ];
          };
        "GC-Semantics" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.dependent-sum)
            (hsPkgs.dependent-map)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.these)
            (hsPkgs.transformers)
            (hsPkgs.reflex)
            (hsPkgs.ref-tf)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
          };
        "rootCleanup" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.dependent-sum)
            (hsPkgs.mtl)
            (hsPkgs.reflex)
            (hsPkgs.ref-tf)
            (hsPkgs.these)
            ];
          };
        };
      benchmarks = {
        "spider-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.dependent-map)
            (hsPkgs.dependent-sum)
            (hsPkgs.ref-tf)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.reflex)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            ];
          };
        "saulzar-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.dependent-map)
            (hsPkgs.dependent-sum)
            (hsPkgs.loch-th)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.process)
            (hsPkgs.ref-tf)
            (hsPkgs.reflex)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }