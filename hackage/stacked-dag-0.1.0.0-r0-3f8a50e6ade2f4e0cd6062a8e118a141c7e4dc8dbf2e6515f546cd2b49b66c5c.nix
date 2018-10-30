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
        name = "stacked-dag";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Junji Hashimoto";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "https://github.com/junjihashimoto/stacked-dag#readme";
      url = "";
      synopsis = "Ascii DAG(Directed acyclic graph) for visualization of dataflow";
      description = "Please see the README on GitHub at <https://github.com/junji.hashimoto/stacked-dag#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.graphviz)
          (hsPkgs.text)
        ];
      };
      exes = {
        "stacked-dag" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.graphviz)
            (hsPkgs.optparse-applicative)
            (hsPkgs.stacked-dag)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.doctest)
            (hsPkgs.graphviz)
            (hsPkgs.stacked-dag)
            (hsPkgs.text)
          ];
        };
      };
    };
  }