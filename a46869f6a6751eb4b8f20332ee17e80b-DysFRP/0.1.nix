{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "DysFRP";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marek Materzok";
        author = "Marek Materzok";
        homepage = "https://github.com/tilk/DysFRP";
        url = "";
        synopsis = "dysFunctional Reactive Programming";
        description = "Simple imperative implementation of FRP.";
        buildType = "Simple";
      };
      components = {
        DysFRP = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.contravariant
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }