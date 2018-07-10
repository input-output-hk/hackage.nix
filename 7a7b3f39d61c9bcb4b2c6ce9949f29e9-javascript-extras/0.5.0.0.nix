{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "javascript-extras";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/javascript-extras#readme";
        url = "";
        synopsis = "Extra javascript functions when using GHCJS";
        description = "Extra javascript functions when using GHCJS. Please look at README.md";
        buildType = "Simple";
      };
      components = {
        javascript-extras = {
          depends  = ([
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.newtype-generics
            hsPkgs.parallel
            hsPkgs.text
          ] ++ pkgs.lib.optional (compiler.isGhcjs && true) hsPkgs.ghcjs-base) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) hsPkgs.ghcjs-base-stub;
        };
        exes = {
          javascript-extras-test = {
            depends  = ([
              hsPkgs.base
              hsPkgs.javascript-extras
            ] ++ pkgs.lib.optionals (compiler.isGhcjs && true) [
              hsPkgs.ghcjs-base
              hsPkgs.ghcjs-prim
            ]) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) hsPkgs.ghcjs-base-stub;
          };
        };
      };
    }