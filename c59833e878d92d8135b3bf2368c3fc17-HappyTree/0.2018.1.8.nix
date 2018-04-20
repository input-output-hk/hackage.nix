{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HappyTree";
          version = "0.2018.1.8";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Marisa Kirisame";
        maintainer = "lolisa@marisa.moe";
        author = "Marisa Kirisame";
        homepage = "https://github.com/MarisaKirisame/HappyTree#readme";
        url = "";
        synopsis = "Type Safe and End to End Decision Tree";
        description = "Please see the README on Github at <https://github.com/MarisaKirisame/HappyTree#readme>";
        buildType = "Simple";
      };
      components = {
        HappyTree = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.generics-sop
            hsPkgs.safe
            hsPkgs.singletons
          ];
        };
        tests = {
          HappyTree-test = {
            depends  = [
              hsPkgs.HappyTree
              hsPkgs.base
              hsPkgs.constraints
              hsPkgs.generics-sop
              hsPkgs.safe
              hsPkgs.singletons
            ];
          };
        };
      };
    }