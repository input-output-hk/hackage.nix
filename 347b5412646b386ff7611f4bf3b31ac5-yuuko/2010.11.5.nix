{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "yuuko";
          version = "2010.11.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "http://github.com/nfjinjing/yuuko";
        url = "";
        synopsis = "A transcendental HTML parser gently wrapping the HXT library";
        description = "Parse without thinking ...\n\nyuuko \"//body\" \"<html><body>hi</body></html>\"\n\n> [\"hi\"]";
        buildType = "Simple";
      };
      components = {
        "yuuko" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.tagsoup
          ];
        };
        exes = {
          "yuuko" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hxt
              hsPkgs.tagsoup
              hsPkgs.haskell98
            ];
          };
        };
      };
    }