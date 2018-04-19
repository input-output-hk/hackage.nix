{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "curryrs";
          version = "0.1.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2016 Michael Gattozzi";
        maintainer = "mgattozzi@gmail.com";
        author = "Michael Gattozzi";
        homepage = "https://github.com/mgattozzi/curryrs#readme";
        url = "";
        synopsis = "Easy to use FFI Bridge for using Rust in Haskell";
        description = "Please see README.md for more information on how to use this library.";
        buildType = "Simple";
      };
      components = {
        curryrs = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
        tests = {
          curryrs-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.curryrs
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
        benchmarks = {
          curryrs-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.curryrs
            ];
          };
        };
      };
    }