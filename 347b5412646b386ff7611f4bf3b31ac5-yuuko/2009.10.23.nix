{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "yuuko";
          version = "2009.10.23";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/yuuko";
        url = "";
        synopsis = "A transcendental HTML parser gently wrapping the HXT library";
        description = "Parse without thinking ...\nyuuko \"//body/text()\" \"<html><body>hi</body></html>\"\n> [\"hi\"]";
        buildType = "Simple";
      };
      components = {
        yuuko = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
          ];
        };
      };
    }