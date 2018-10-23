{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "graph-wrapper";
        version = "0.2.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Bolingbroke <batterseapower@hotmail.com>, Sönke Hahn <soenkehahn@gmail.com>";
      author = "Max Bolingbroke";
      homepage = "https://github.com/soenkehahn/graph-wrapper";
      url = "";
      synopsis = "A wrapper around the standard Data.Graph with a less awkward interface";
      description = "A wrapper around the standard Data.Graph with a less awkward interface";
      buildType = "Simple";
    };
    components = {
      "graph-wrapper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }