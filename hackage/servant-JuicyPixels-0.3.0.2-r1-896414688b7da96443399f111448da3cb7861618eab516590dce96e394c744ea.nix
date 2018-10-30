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
        name = "servant-JuicyPixels";
        version = "0.3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tvh@tvholtz.de";
      author = "Timo von Holtz";
      homepage = "https://github.com/tvh/servant-JuicyPixels";
      url = "";
      synopsis = "Servant support for JuicyPixels";
      description = "Provides content types for image types supported by JuicyPixels";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-media)
          (hsPkgs.JuicyPixels)
          (hsPkgs.servant)
        ];
      };
      exes = {
        "image-conversion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.JuicyPixels)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.servant-JuicyPixels)
            (hsPkgs.warp)
            (hsPkgs.wai)
          ];
        };
      };
    };
  }