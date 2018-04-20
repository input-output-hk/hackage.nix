{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "array-primops";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 András Kovács";
        maintainer = "puttamalac@gmail.com";
        author = "András Kovács";
        homepage = "";
        url = "";
        synopsis = "Extra foreign primops for primitive arrays";
        description = "Boxed arrays cannot be allocated without initialization, because in that case the garbage collector would try to follow wild pointers. This is a source of inefficiency; quite a few operations must allocate a new array, initialize it, then overwrite the initial elements with the actually relevant data. This package provides low-level primitives for doing such operations without superfluous copying.";
        buildType = "Simple";
      };
      components = {
        array-primops = {
          depends  = pkgs.lib.optionals compiler.isGhc ([
            hsPkgs.base
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim);
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.criterion
            ];
          };
        };
      };
    }