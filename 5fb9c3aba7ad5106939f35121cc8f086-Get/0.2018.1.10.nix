{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Get";
          version = "0.2018.1.10";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Marisa Kirisame";
        maintainer = "lolisa@marisa.moe";
        author = "Marisa Kirisame";
        homepage = "https://github.com/MarisaKirisame/Get#readme";
        url = "";
        synopsis = "get stuff out of stuff";
        description = "Please see the README on Github at <https://github.com/MarisaKirisame/Get#readme>";
        buildType = "Simple";
      };
      components = {
        "Get" = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.singletons
          ];
        };
        tests = {
          "Get-test" = {
            depends  = [
              hsPkgs.Get
              hsPkgs.base
              hsPkgs.constraints
              hsPkgs.singletons
            ];
          };
        };
      };
    }