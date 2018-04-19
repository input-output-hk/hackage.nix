{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "namelist";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/namelist-hs";
        url = "";
        synopsis = "fortran90 namelist parser/pretty printer";
        description = "fortran90 namelist parser/pretty printer";
        buildType = "Simple";
      };
      components = {
        namelist = {
          depends  = [
            hsPkgs.base
            hsPkgs.case-insensitive
            hsPkgs.parsec
            hsPkgs.data-default-class
          ];
        };
        tests = {
          tasty = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.case-insensitive
              hsPkgs.QuickCheck
              hsPkgs.namelist
            ];
          };
        };
      };
    }