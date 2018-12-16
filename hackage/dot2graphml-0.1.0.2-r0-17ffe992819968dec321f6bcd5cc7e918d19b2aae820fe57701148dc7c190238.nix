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
      specVersion = "1.8";
      identifier = {
        name = "dot2graphml";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "http://redmine.iportnov.ru/projects/dot2graphml";
      url = "";
      synopsis = "Converter from GraphViz .dot format to yEd GraphML";
      description = "This package contains a converter from DOT format used by\nGraphViz (http://graphviz.org) to variant of GraphML\n(http://graphml.graphdrawing.org/) used by yEd\n(http://www.yworks.com/en/products_yed_about.html).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dot2graphml" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hxt)
            (hsPkgs.graphviz)
            (hsPkgs.text)
          ];
        };
      };
    };
  }