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
        name = "temporal-music-notation-western";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/temporal-music-notation-western";
      url = "";
      synopsis = "western music notation";
      description = "Localization of 'temporal-music-notation' library for\nWestern music tradition.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.temporal-music-notation)
        ];
      };
    };
  }