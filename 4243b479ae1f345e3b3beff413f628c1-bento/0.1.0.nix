{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bento";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "https://github.com/tfausak/bento#readme";
        url = "";
        synopsis = "🍱 Manage stateful components.";
        description = "Bento manages stateful components.";
        buildType = "Simple";
      };
      components = {
        bento = {
          depends  = [ hsPkgs.base ];
        };
      };
    }