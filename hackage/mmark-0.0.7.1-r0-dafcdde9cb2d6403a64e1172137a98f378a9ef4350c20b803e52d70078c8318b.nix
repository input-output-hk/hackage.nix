{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "mmark"; version = "0.0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mmark-md/mmark";
      url = "";
      synopsis = "Strict markdown processor for writers";
      description = "Strict markdown processor for writers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.email-validate)
          (hsPkgs.foldl)
          (hsPkgs.hashable)
          (hsPkgs.html-entity-map)
          (hsPkgs.lucid)
          (hsPkgs.megaparsec)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.modern-uri)
          (hsPkgs.mtl)
          (hsPkgs.parser-combinators)
          (hsPkgs.text)
          (hsPkgs.text-metrics)
          (hsPkgs.unordered-containers)
          ] ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs.yaml);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.foldl)
            (hsPkgs.hspec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.lucid)
            (hsPkgs.megaparsec)
            (hsPkgs.mmark)
            (hsPkgs.modern-uri)
            (hsPkgs.text)
            ];
          };
        };
      benchmarks = {
        "bench-speed" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.mmark)
            (hsPkgs.text)
            ];
          };
        "bench-memory" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mmark)
            (hsPkgs.text)
            (hsPkgs.weigh)
            ];
          };
        };
      };
    }