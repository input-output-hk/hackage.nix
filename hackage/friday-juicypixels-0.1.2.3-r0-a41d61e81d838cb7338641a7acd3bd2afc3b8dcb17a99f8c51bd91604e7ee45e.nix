{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "friday-juicypixels";
        version = "0.1.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson";
      homepage = "https://github.com/TomMD/friday-juicypixels";
      url = "";
      synopsis = "Converts between the Friday and JuicyPixels image types";
      description = "See <https://github.com/TomMD/friday-juicypixels#readme README>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.friday)
          (hsPkgs.JuicyPixels)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.friday)
            (hsPkgs.JuicyPixels)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.hspec)
            (hsPkgs.friday-juicypixels)
          ];
        };
      };
    };
  }