{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "data-inttrie";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Luke Palmer <lrpalmer@gmail.com>";
        author = "Luke Palmer <lrpalmer@gmail.com>";
        homepage = "http://github.com/luqui/data-inttrie";
        url = "";
        synopsis = "A lazy, infinite trie of integers.";
        description = "A simple lazy, infinite trie from integers.";
        buildType = "Simple";
      };
      components = {
        "data-inttrie" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }