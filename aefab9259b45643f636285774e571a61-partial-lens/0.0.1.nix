{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "partial-lens";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Russell O'Connor <roconnor@theorem.ca>";
        author = "Russell O'Connor";
        homepage = "";
        url = "";
        synopsis = "Haskell 98 Partial Lenses";
        description = "Haskell 98 Partial Lenses";
        buildType = "Simple";
      };
      components = {
        partial-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad-transformers
            hsPkgs.transformers
            hsPkgs.data-lens
          ];
        };
      };
    }