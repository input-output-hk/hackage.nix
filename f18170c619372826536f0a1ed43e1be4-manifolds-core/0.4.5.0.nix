{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "manifolds-core";
          version = "0.4.5.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "(@) jsagemue \$ uni-koeln.de";
        author = "Justus Sagemüller";
        homepage = "https://github.com/leftaroundabout/manifolds";
        url = "";
        synopsis = "The basic classes for the manifolds hierarchy.";
        description = "The basic classes for the\n<http://hackage.haskell.org/package/manifolds manifolds> hierarchy.";
        buildType = "Simple";
      };
      components = {
        manifolds-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector-space
            hsPkgs.tagged
            hsPkgs.call-stack
          ];
        };
      };
    }