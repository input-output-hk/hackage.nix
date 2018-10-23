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
        name = "diagrams-contrib";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Various";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Collection of user contributions to diagrams EDSL";
      description = "A collection of user contributions for diagrams,\nan embedded domain-specific language for generation\nof vector graphics.";
      buildType = "Simple";
    };
    components = {
      "diagrams-contrib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.vector-space)
          (hsPkgs.colour)
          (hsPkgs.diagrams-lib)
          (hsPkgs.fclabels)
          (hsPkgs.force-layout)
        ];
      };
    };
  }