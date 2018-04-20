{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HSGEP";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2010 Matthew Sottile";
        maintainer = "Matthew Sottile <mjsottile@computer.org>";
        author = "Matthew Sottile";
        homepage = "http://github.com/mjsottile/hsgep/";
        url = "";
        synopsis = "Gene Expression Programming evolutionary algorithm in Haskell";
        description = "Gene Expression Programming evolutionary algorithm implemented\nin Haskell.";
        buildType = "Simple";
      };
      components = {
        HSGEP = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskell98
            hsPkgs.mersenne-random-pure64
            hsPkgs.monad-mersenne-random
            hsPkgs.vector
          ];
        };
        exes = {
          HSGEP_Regression = {
            depends  = [ hsPkgs.csv ];
          };
          HSGEP_CADensity = {};
        };
      };
    }