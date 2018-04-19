{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ContextAlgebra";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hahn@geoinfo.tuwien.ac.at";
        author = "Jürgen Hahn";
        homepage = "";
        url = "";
        synopsis = "Context Algebra";
        description = "Context Algebra to identify typical exemplars of a concept influenced by a context. A executable model is included in the package NearContextAlgebra also available here";
        buildType = "Simple";
      };
      components = {
        ContextAlgebra = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lattices
            hsPkgs.multiset
          ];
        };
      };
    }