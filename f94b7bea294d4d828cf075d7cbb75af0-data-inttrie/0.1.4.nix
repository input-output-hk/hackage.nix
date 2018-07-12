{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-inttrie";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "https://github.com/luqui/data-inttrie";
        url = "";
        synopsis = "A simple lazy, infinite trie from integers";
        description = "";
        buildType = "Simple";
      };
      components = {
        "data-inttrie" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }