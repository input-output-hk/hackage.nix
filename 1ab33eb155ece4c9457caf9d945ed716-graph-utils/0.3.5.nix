{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "graph-utils";
          version = "0.3.5";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2010 Hiromi Ishii";
        maintainer = "Hiromi Ishii <mr_konn _at_ jcom.home.ne.jp>";
        author = "Hiromi ISHII";
        homepage = "http://github.com/konn/graph-utils/";
        url = "";
        synopsis = "A simple wapper & quasi quoter for fgl.";
        description = "Simple Wrapper for generating Graph provided by Data.Graph.Inductive.\nIt also contains PageRank calculator.";
        buildType = "Simple";
      };
      components = {
        "graph-utils" = {
          depends  = [
            hsPkgs.base
            hsPkgs.fgl
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.parsec
          ];
        };
      };
    }