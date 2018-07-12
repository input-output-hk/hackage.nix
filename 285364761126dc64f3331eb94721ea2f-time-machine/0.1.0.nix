{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "time-machine";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2017 TAKAHASHI Yuto";
        maintainer = "TAKAHASHI Yuto <ytaka23dev@gmail.com>";
        author = "TAKAHASHI Yuto <ytaka23dev@gmail.com>";
        homepage = "https://github.com/y-taka-23/time-machine#readme";
        url = "";
        synopsis = "A library to mock the current time.";
        description = "A library to mock the current time and relevant IO functions\nby using a type class.\nYou can get the great command of the current time in UTC,\ntime zones, and the speed of time.";
        buildType = "Simple";
      };
      components = {
        "time-machine" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.tz
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.tz
              hsPkgs.time-machine
            ];
          };
        };
      };
    }