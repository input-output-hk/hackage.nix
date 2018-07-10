{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HNumeric";
          version = "0.3.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Tae Geun Kim";
        maintainer = "edeftg@gmail.com";
        author = "Tae Geun Kim";
        homepage = "https://github.com/Axect/HNumeric#readme";
        url = "";
        synopsis = "Haskell Numeric Library with pure functionality, R & MATLAB Syntax.";
        description = "Please see the README on GitHub at <https://github.com/Axect/HNumeric#readme>";
        buildType = "Simple";
      };
      components = {
        HNumeric = {
          depends  = [
            hsPkgs.base
            hsPkgs.normaldistribution
            hsPkgs.random
          ];
        };
        tests = {
          HNumeric-test = {
            depends  = [
              hsPkgs.HNumeric
              hsPkgs.base
              hsPkgs.normaldistribution
              hsPkgs.random
            ];
          };
        };
      };
    }