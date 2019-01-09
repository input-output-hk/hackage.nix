{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "vacuum-graphviz"; version = "2.1.0.1"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright (c) Ivan Miljenovic 2011, Austin Seipp 2012";
      maintainer = "Austin Seipp <mad.one@gmail.com>";
      author = "Ivan Miljenovic";
      homepage = "";
      url = "";
      synopsis = "A library for transforming vacuum graphs into GraphViz output";
      description = "A library for transforming @vacuum@ graphs into GraphViz output";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.vacuum)
          (hsPkgs.graphviz)
          ];
        };
      };
    }