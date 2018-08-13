{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-JuicyPixels";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "tvh@tvholtz.de";
      author = "Timo von Holtz";
      homepage = "https://github.com/tvh/servant-JuicyPixels";
      url = "";
      synopsis = "servant-JuicyPixels";
      description = "servant-JuicyPixels";
      buildType = "Simple";
    };
    components = {
      "servant-JuicyPixels" = {
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