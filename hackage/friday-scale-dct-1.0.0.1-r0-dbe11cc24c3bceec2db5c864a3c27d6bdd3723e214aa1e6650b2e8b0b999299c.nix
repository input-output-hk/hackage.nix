{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.20";
      identifier = {
        name = "friday-scale-dct";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alex Mason <axman6@gmail.com>";
      author = "Alex Mason <axman6@gmail.com>, Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/axman6/friday-scale-dct#readme";
      url = "";
      synopsis = "Scale Friday images with DCT";
      description = "Scale Friday Images with DCT";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.friday)
          (hsPkgs.fft)
          (hsPkgs.carray)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "example" = {
          depends  = pkgs.lib.optionals (flags.example) [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.JuicyPixels)
            (hsPkgs.fft)
            (hsPkgs.carray)
            (hsPkgs.base)
            (hsPkgs.friday)
            (hsPkgs.friday-scale-dct)
            (hsPkgs.friday-juicypixels)
            (hsPkgs.JuicyPixels)
            (hsPkgs.JuicyPixels-util)
            (hsPkgs.time)
          ];
        };
      };
    };
  }