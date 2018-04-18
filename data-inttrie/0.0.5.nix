{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "data-inttrie";
          version = "0.0.5";
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
        data-inttrie = {
          depends  = [ hsPkgs.base ];
        };
      };
    }