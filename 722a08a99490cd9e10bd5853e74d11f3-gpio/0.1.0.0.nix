{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gpio";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Author name here";
        maintainer = "example@example.com";
        author = "Author name here";
        homepage = "http://github.com/githubuser/gpio#readme";
        url = "";
        synopsis = "Simple project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "gpio" = {
          depends  = [
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.string-conversions
            hsPkgs.monad-control
          ];
        };
        exes = {
          "gpio" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gpio
              hsPkgs.basic-prelude
            ];
          };
        };
      };
    }