{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "algebraic-prelude";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 (c) Hiromi ISHII";
        maintainer = "konn.jinro _at_ gmail.com";
        author = "Hiromi ISHII";
        homepage = "https://github.com/konn/algebraic-prelude#readme";
        url = "";
        synopsis = "Algebraically structured Prelude";
        description = "This package provides a drop-in replacement for Prelude module,\nbased on algebraic hierarchy provided by <https://hackage.haskell.org/package/algebra algebra> package.";
        buildType = "Simple";
      };
      components = {
        algebraic-prelude = {
          depends  = [
            hsPkgs.base
            hsPkgs.algebra
            hsPkgs.basic-prelude
            hsPkgs.lens
            hsPkgs.semigroups
          ];
        };
        exes = {
          sandpit = {
            depends  = [
              hsPkgs.base
              hsPkgs.algebraic-prelude
            ];
          };
        };
      };
    }