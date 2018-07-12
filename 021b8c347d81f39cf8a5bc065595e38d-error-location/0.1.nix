{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "error-location";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "greg@gregweber.info";
        author = "Greg Weber";
        homepage = "https://github.com/gregwebs/ErrorLocation.hs";
        url = "";
        synopsis = "error functions that show file location information";
        description = "";
        buildType = "Simple";
      };
      components = {
        "error-location" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }