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
      specVersion = "1.10";
      identifier = {
        name = "reflex-sdl2";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Schell Scivally";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/reflex-sdl2#readme";
      url = "";
      synopsis = "SDL2 and reflex FRP";
      description = "A minimal host for sdl2 based reflex apps.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.dependent-sum)
          (hsPkgs.mtl)
          (hsPkgs.reflex)
          (hsPkgs.ref-tf)
          (hsPkgs.sdl2)
        ];
      };
      exes = {
        "reflex-sdl2-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.reflex-sdl2)
          ];
        };
      };
    };
  }