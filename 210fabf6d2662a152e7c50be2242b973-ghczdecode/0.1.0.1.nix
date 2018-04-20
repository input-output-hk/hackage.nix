{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ghczdecode";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eyal.lotem@gmail.com";
        author = "Eyal Lotem";
        homepage = "https://github.com/Peaker/ghczdecode";
        url = "";
        synopsis = "Decode Z-encoded strings from GHC";
        description = "Use ghczdecode <string> to decode it";
        buildType = "Simple";
      };
      components = {
        exes = {
          ghczdecode = {
            depends  = [
              hsPkgs.base
              hsPkgs.zenc
            ];
          };
        };
      };
    }