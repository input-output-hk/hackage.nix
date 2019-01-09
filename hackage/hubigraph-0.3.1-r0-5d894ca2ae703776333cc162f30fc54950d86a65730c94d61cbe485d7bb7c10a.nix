{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hubigraph"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kohei Ozaki <eowner@gmail.com>";
      author = "Kohei Ozaki";
      homepage = "http://ooxo.org/hubigraph/";
      url = "";
      synopsis = "A haskell wrap for Ubigraph";
      description = "Hubigraph is a Haskell wrapper for Ubigraph, which is a tool for visualizing dynamic graphs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.haxr)
          ];
        };
      };
    }