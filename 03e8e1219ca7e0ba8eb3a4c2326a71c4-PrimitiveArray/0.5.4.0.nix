{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "PrimitiveArray";
          version = "0.5.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2010-2014";
        maintainer = "choener@tbi.univie.ac.at";
        author = "Christian Hoener zu Siederdissen";
        homepage = "http://www.tbi.univie.ac.at/~choener/";
        url = "";
        synopsis = "Efficient multidimensional arrays";
        description = "This library provides efficient multidimensional arrays.\n\nIn general all operations are (highly) unsafe, no\nbounds-checking or other sanity-checking is performed.\nOperations are aimed toward efficiency as much as possible.";
        buildType = "Simple";
      };
      components = {
        PrimitiveArray = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.primitive
            hsPkgs.vector
            hsPkgs.vector-th-unbox
            hsPkgs.repa
            hsPkgs.QuickCheck
          ];
        };
      };
    }