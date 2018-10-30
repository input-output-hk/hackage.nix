{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "graphite";
        version = "0.2.1.0";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.random)
          (hsPkgs.process)
          (hsPkgs.graphviz)
          (hsPkgs.unordered-containers)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "graphite-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.graphite)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }