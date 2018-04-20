{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "JuicyPixels-repa";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Thomas M. DuBuisson 2012";
        maintainer = "Thomas.DuBuisson@gmail.com";
        author = "Thomas M. DuBuisson";
        homepage = "";
        url = "";
        synopsis = "Convenience functions to obtain array representations of images.";
        description = "This wraps the Juicy.Pixels library to convert into 'Repa' and\n'Data.Vector.Storable' formats.";
        buildType = "Simple";
      };
      components = {
        JuicyPixels-repa = {
          depends  = [
            hsPkgs.base
            hsPkgs.repa
            hsPkgs.JuicyPixels
            hsPkgs.vector
            hsPkgs.bytestring
          ];
        };
      };
    }