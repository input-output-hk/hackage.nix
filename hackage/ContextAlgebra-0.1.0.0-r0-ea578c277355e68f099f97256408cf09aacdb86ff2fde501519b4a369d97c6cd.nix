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
        name = "ContextAlgebra";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hahn@geoinfo.tuwien.ac.at";
      author = "juergenhah";
      homepage = "";
      url = "";
      synopsis = "Context Algebra";
      description = "Context Algebra to identify typical exemplars of a concept influenced by a context.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lattices)
          (hsPkgs.multiset)
        ];
      };
    };
  }