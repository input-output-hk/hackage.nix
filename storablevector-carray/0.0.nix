{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "storablevector-carray";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <storablevector@henning-thielemann.de>";
        author = "Henning Thielemann <storablevector@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Storable_Vector";
        url = "";
        synopsis = "Conversion between storablevector and carray";
        description = "Conversion from and to strict storable vectors and c-arrays.\nThis allows you to apply Fast Fourier Transform from the @fft@ package\nto storablevectors.";
        buildType = "Simple";
      };
      components = {
        storablevector-carray = {
          depends  = [
            hsPkgs.storablevector
            hsPkgs.carray
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
      };
    }