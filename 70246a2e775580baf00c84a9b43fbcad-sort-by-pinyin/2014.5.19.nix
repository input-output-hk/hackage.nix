{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "sort-by-pinyin";
          version = "2014.5.19";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/sort-by-pinyin";
        url = "";
        synopsis = "Sort simplified Chinese by PinYin";
        description = "Sort simplified Chinese by PinYin";
        buildType = "Simple";
      };
      components = {
        "sort-by-pinyin" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.air
            hsPkgs.air-th
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.air-extra
          ];
        };
      };
    }