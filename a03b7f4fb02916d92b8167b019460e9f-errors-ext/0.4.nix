{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "errors-ext";
          version = "0.4";
        };
        license = "LicenseRef-Apache";
        copyright = "2017 Warlock <internalmike@gmail.com>";
        maintainer = "Warlock <internalmike@gmail.com>";
        author = "Warlock <internalmike@gmail.com>";
        homepage = "https://github.com/A1-Triard/errors-ext#readme";
        url = "";
        synopsis = "`bracket`-like functions for `ExceptT` over `IO` monad.";
        description = "`bracket`-like functions for `ExceptT` over `IO` monad.";
        buildType = "Simple";
      };
      components = {
        errors-ext = {
          depends  = [
            hsPkgs.base
            hsPkgs.errors
            hsPkgs.exceptions
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
        tests = {
          errors-ext-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.errors-ext
              hsPkgs.errors
              hsPkgs.exceptions
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
        };
      };
    }