{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "means";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 Winterland";
        maintainer = "winterland1989@gmail.com";
        author = "winterland1989";
        homepage = "";
        url = "";
        synopsis = "calculate varieties of mean/average using semigroup.";
        description = "calculate varieties of mean/average using semigroup.";
        buildType = "Simple";
      };
      components = {
        means = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
          ];
        };
      };
    }