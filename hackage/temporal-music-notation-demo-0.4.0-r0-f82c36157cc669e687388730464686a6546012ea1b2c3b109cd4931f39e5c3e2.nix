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
      specVersion = "1.6";
      identifier = {
        name = "temporal-music-notation-demo";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/temporal-music-notation-demo";
      url = "";
      synopsis = "generates midi from score notation.";
      description = "Library for playing scores made with 'temporal-music-notation'\nvia midi. It binds 'temporal-media-notation' and 'HCodecs'\npackages. Features composable score representation and\nmicrosound composition. It relies on\nMidi Tuning Standart (MTS) so it's better to listen results\nwith TiMidity or another soft that undestands MTS.\nExamples can be found source directory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.temporal-music-notation)
          (hsPkgs.HCodecs)
          (hsPkgs.binary)
        ];
      };
    };
  }