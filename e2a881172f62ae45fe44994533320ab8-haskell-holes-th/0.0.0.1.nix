{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-holes-th";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "klntsky@gmail.com";
        author = "klntsky";
        homepage = "";
        url = "";
        synopsis = "Infer haskell code by given type.";
        description = "TIP solver for simply typed lambda calculus to automatically infer the code from type definitions using TemplateHaskell.";
        buildType = "Simple";
      };
      components = {
        haskell-holes-th = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }