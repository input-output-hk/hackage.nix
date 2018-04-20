{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "data-memocombinators";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "http://github.com/luqui/data-memocombinators";
        url = "";
        synopsis = "Combinators for building memo tables.";
        description = "Combinators for building memo tables.";
        buildType = "Simple";
      };
      components = {
        data-memocombinators = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.data-inttrie
          ];
        };
      };
    }