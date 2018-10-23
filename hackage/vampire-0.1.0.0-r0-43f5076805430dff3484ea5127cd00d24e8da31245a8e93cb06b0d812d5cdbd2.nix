{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vampire";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "benzrf@benzrf.com";
      author = "benzrf";
      homepage = "https://github.com/benzrf/vampire";
      url = "";
      synopsis = "Analyze and visualize expression trees.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "vampire" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.uniplate)
          (hsPkgs.deepseq)
          (hsPkgs.fgl)
          (hsPkgs.mtl)
          (hsPkgs.dlist)
          (hsPkgs.graphviz)
        ];
      };
      exes = {
        "vampire" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.uniplate)
            (hsPkgs.deepseq)
            (hsPkgs.fgl)
            (hsPkgs.mtl)
            (hsPkgs.dlist)
            (hsPkgs.graphviz)
          ];
        };
      };
    };
  }