{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "digraph"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019, Kadena LLC";
      maintainer = "lars@kadena.io";
      author = "Lars Kuhtz";
      homepage = "https://github.com/kadena-io/digraph";
      url = "";
      synopsis = "Directed Graphs";
      description = "Directed graphs implementation that is based on unordered-containers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.massiv)
          (hsPkgs.mwc-random)
          (hsPkgs.streaming)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "digraph-tests" = {
          depends = [
            (hsPkgs.digraph)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.fgl)
            (hsPkgs.hashable)
            (hsPkgs.massiv)
            ];
          };
        };
      };
    }