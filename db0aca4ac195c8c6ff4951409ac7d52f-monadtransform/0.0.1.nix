{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monadtransform";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/monadtransform";
        url = "";
        synopsis = "A type-class for transforming monads (homomorphism) in a transformer";
        description = "A type-class for transforming monads (homomorphism) in a transformer";
        buildType = "Simple";
      };
      components = {
        monadtransform = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }