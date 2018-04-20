{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "web-plugins";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
        author = "Jeremy Shaw";
        homepage = "http://www.happstack.com/";
        url = "";
        synopsis = "dynamic plugin system for web applications";
        description = "";
        buildType = "Simple";
      };
      components = {
        web-plugins = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.containers
          ];
        };
      };
    }