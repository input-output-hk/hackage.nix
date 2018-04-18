{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hubigraph";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Matei Tene <matei.tene@cti.pub.ro>";
        author = "Kohei Ozaki <eowner@gmail.com>";
        homepage = "http://ooxo.org/hubigraph/";
        url = "";
        synopsis = "A haskell wrap for Ubigraph";
        description = "Hubigraph is a Haskell wrapper for Ubigraph, which is a tool for visualizing dynamic graphs.";
        buildType = "Simple";
      };
      components = {
        hubigraph = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.haxr
          ];
        };
      };
    }