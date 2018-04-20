{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "friday-juicypixels";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tommd@galois.com";
        author = "Thomas M. DuBuisson";
        homepage = "https://github.com/TomMD/friday-juicypixels";
        url = "";
        synopsis = "Converts between the Friday and JuicyPixels image types";
        description = "";
        buildType = "Simple";
      };
      components = {
        friday-juicypixels = {
          depends  = [
            hsPkgs.base
            hsPkgs.friday
            hsPkgs.JuicyPixels
            hsPkgs.vector
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.friday
              hsPkgs.JuicyPixels
              hsPkgs.bytestring
              hsPkgs.file-embed
              hsPkgs.hspec
              hsPkgs.friday-juicypixels
            ];
          };
        };
      };
    }