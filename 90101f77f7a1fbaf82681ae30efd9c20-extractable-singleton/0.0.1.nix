{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "extractable-singleton";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Athan Clark";
        maintainer = "athan.clark@gmail.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/extractable-singleton#readme";
        url = "";
        synopsis = "A functor, where the \"stored\" value is isomorphic to Identity";
        description = "";
        buildType = "Simple";
      };
      components = {
        extractable-singleton = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }