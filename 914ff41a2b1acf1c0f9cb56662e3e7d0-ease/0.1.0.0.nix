{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ease";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fresheyeball@gmail.com";
        author = "Isaac Shapira";
        homepage = "";
        url = "";
        synopsis = "Robert Penner's easing equations";
        description = "Robert Penner's easing equations transcribed to haskell and normalized";
        buildType = "Simple";
      };
      components = {
        ease = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
          ];
        };
      };
    }