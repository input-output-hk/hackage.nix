{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "dragen"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Agustín Mista";
      maintainer = "Agustín Mista";
      author = "Agustín Mista";
      homepage = "https://github.com/OctopiChalmers/dragen#readme";
      url = "";
      synopsis = "Automatic derivation of optimized QuickCheck random generators.";
      description = "DRAGEN is a Template Haskell tool for automatically deriving QuickCheck generators in compile-time. The user sets a desired distribution of values, and DRAGEN will try optimize the generation parameters to satisfy it using probabilistic analyses based on multi-type branching processes.\nDRAGEN is based on the following paper\nBranching processes for QuickCheck generators. Agustín Mista, Alejandro Russo, John Hughes. Haskell Symposium, 2018. https://dl.acm.org/citation.cfm?doid=3242744.3242747";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.extra)
          (hsPkgs.ghc-prim)
          (hsPkgs.matrix)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.dragen)
            (hsPkgs.extra)
            (hsPkgs.ghc-prim)
            (hsPkgs.matrix)
            (hsPkgs.split)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }