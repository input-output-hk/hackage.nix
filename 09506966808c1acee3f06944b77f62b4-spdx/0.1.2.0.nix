{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "spdx";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Oleg Grenrus";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus";
        homepage = "https://github.com/phadej/spdx";
        url = "";
        synopsis = "SPDX license expression language";
        description = "Implementation of <http://spdx.org/sites/spdx/files/SPDX-2.0.pdf SPDX> related functionality.";
        buildType = "Simple";
      };
      components = {
        spdx = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.spdx
            ];
          };
        };
      };
    }