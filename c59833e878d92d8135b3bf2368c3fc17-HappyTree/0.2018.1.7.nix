{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HappyTree";
          version = "0.2018.1.7";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Marisa Kirisame";
        maintainer = "lolisa@marisa.moe";
        author = "Marisa Kirisame";
        homepage = "https://github.com/MarisaKirisame/HappyTree#readme";
        url = "";
        synopsis = "";
        description = "Please see the README on Github at <https://github.com/MarisaKirisame/HappyTree#readme>";
        buildType = "Simple";
      };
      components = {
        HappyTree = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.generics-sop
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
              hsPkgs.singletons
            ];
          };
        };
      };
    }