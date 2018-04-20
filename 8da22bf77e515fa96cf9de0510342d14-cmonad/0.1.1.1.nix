{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "cmonad";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Augustsson";
        author = "Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "A library for C-like programming";
        description = "A library for C-like programming.  The code looks imperative, and you might think it would be efficient, but GHC lacks certain optimizations that makes it very slow.";
        buildType = "Simple";
      };
      components = {
        cmonad = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }