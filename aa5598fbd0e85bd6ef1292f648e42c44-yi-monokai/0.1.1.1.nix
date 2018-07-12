{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-monokai";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fuuzetsu@fuuzetsu.co.uk";
        author = "Mateusz Kowalczyk";
        homepage = "https://github.com/Fuuzetsu/yi-monokai";
        url = "";
        synopsis = "Monokai colour theme for the Yi text editor";
        description = "Monokai colour theme for Yi. Check source for yi.hs usage.";
        buildType = "Simple";
      };
      components = {
        "yi-monokai" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yi
          ];
        };
      };
    }