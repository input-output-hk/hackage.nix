{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rematch-text";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tcrayford@googlemail.com";
        author = "Tom Crayford";
        homepage = "";
        url = "";
        synopsis = "`rematch` matchers for Data.Text";
        description = "";
        buildType = "Simple";
      };
      components = {
        rematch-text = {
          depends  = [
            hsPkgs.base
            hsPkgs.rematch
            hsPkgs.text
          ];
        };
      };
    }