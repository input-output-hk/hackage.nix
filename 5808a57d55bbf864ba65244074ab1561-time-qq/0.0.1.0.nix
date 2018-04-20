{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "time-qq";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Marie <christian@ponies.io>";
        maintainer = "Christian Marie <christian@ponies.io>";
        author = "Christian Marie <christian@ponies.io>";
        homepage = "https://github.com/christian-marie/time-qq";
        url = "";
        synopsis = "Quasi-quoter for UTCTime times";
        description = "Quasi-quoter for UTCTime times";
        buildType = "Simple";
      };
      components = {
        time-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.time-locale-compat
          ];
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.time-qq
            ];
          };
        };
      };
    }