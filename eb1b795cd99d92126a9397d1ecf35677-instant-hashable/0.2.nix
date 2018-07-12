{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "instant-hashable";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Renzo Carbonara 2015";
        maintainer = "renzo@carbonara.com.ar";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/instant-hashable";
        url = "";
        synopsis = "Generic Hashable instances through instant-generics";
        description = "";
        buildType = "Simple";
      };
      components = {
        "instant-hashable" = {
          depends  = [
            hsPkgs.hashable
            hsPkgs.base
            hsPkgs.instant-generics
          ];
        };
      };
    }