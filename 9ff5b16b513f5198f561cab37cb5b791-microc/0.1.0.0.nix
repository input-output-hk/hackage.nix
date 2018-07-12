{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microc";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Author name here";
        maintainer = "god.be.with.ye.fs@gmail.com";
        author = "hurou927";
        homepage = "https://github.com/hurou927/microc-haskell#readme";
        url = "";
        synopsis = "microc compiler";
        description = "microc compiler(stdin->stdout)";
        buildType = "Simple";
      };
      components = {
        "microc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
        exes = {
          "microc-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.microc
            ];
          };
        };
        tests = {
          "microc-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.microc
            ];
          };
        };
      };
    }