{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "computational-algebra";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) Hiromi ISHII 2013";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "https://github.com/konn/computational-algebra";
        url = "";
        synopsis = "Well-kinded computational algebra library, currently supporting Groebner basis.";
        description = "Dependently-typed computational algebra libray for Groebner basis.";
        buildType = "Simple";
      };
      components = {
        computational-algebra = {
          depends  = [
            hsPkgs.base
            hsPkgs.algebra
            hsPkgs.tagged
            hsPkgs.lens
            hsPkgs.containers
            hsPkgs.peggy
            hsPkgs.monad-loops
            hsPkgs.heaps
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.monomorphic;
        };
      };
    }