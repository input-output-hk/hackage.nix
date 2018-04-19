{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uniform-pair";
          version = "0.1.8";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "https://github.com/conal/uniform-pair/";
        url = "";
        synopsis = "Uniform pairs with class instances";
        description = "Uniform pairs with class instances";
        buildType = "Simple";
      };
      components = {
        uniform-pair = {
          depends  = [
            hsPkgs.base
            hsPkgs.ShowF
          ];
        };
      };
    }