{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "transformers-bifunctors";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jacob Stanley <jacob@stanley.io>";
        author = "Jacob Stanley";
        homepage = "https://github.com/jystic/transformers-bifunctors";
        url = "";
        synopsis = "Bifunctors over monad transformers.";
        description = "Bifunctors over monad transformers.";
        buildType = "Simple";
      };
      components = {
        "transformers-bifunctors" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mmorph
            hsPkgs.transformers
          ];
        };
      };
    }