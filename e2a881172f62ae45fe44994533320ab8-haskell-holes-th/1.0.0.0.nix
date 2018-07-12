{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-holes-th";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "klntsky@gmail.com";
        author = "klntsky";
        homepage = "https://github.com/8084/haskell-holes-th";
        url = "";
        synopsis = "Infer haskell code by given type.";
        description = "TIP solver for simply typed lambda calculus to automatically infer the code from type definitions using TemplateHaskell.";
        buildType = "Simple";
      };
      components = {
        "haskell-holes-th" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }