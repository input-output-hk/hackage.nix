{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mwc-random-monad";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
        author = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Monadic interface for mwc-random";
        description = "Simple monadic interface for mwc-random.";
        buildType = "Simple";
      };
      components = {
        mwc-random-monad = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.primitive
            hsPkgs.vector
            hsPkgs.mwc-random
          ];
        };
      };
    }