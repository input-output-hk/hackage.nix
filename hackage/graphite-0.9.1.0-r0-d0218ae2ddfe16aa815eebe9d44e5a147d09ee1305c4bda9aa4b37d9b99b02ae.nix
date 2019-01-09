{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "graphite"; version = "0.9.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Daniel Campoverde";
      maintainer = "alx@sillybytes.net";
      author = "Daniel Campoverde";
      homepage = "https://github.com/alx741/graphite#readme";
      url = "";
      synopsis = "Graphs and networks library";
      description = "Represent, analyze and visualize graphs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.graphviz)
          (hsPkgs.hashable)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "graphite-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.graphite)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      benchmarks = {
        "graphite-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.graphite)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }