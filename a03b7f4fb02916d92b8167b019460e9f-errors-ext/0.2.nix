{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "errors-ext";
          version = "0.2";
        };
        license = "LicenseRef-Apache";
        copyright = "2017 Warlock <internalmike@gmail.com>";
        maintainer = "Warlock <internalmike@gmail.com>";
        author = "Warlock <internalmike@gmail.com>";
        homepage = "https://github.com/A1-Triard/errors-ext#readme";
        url = "";
        synopsis = "Bracket-like functions for ExceptT over IO monad.";
        description = "Bracket-like functions for ExceptT over IO monad.";
        buildType = "Simple";
      };
      components = {
        errors-ext = {
          depends  = [
            hsPkgs.base
            hsPkgs.errors
            hsPkgs.exceptions
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
              hsPkgs.transformers
            ];
          };
        };
      };
    }