{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "colorless";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Joe Vargas";
        maintainer = "http://github.com/jxv";
        author = "Joe Vargas";
        homepage = "http://github.com/jxv/colorless#readme";
        url = "";
        synopsis = "Yet another IDL for RPC";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "colorless" = {
          depends  = [
            hsPkgs.base
            hsPkgs.pregame
            hsPkgs.megaparsec
          ];
        };
      };
    }