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
      specVersion = "1.8";
      identifier = {
        name = "yesod-media-simple";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2014 Michael Sloan";
      maintainer = "mgsloan@gmail.com";
      author = "Michael Sloan";
      homepage = "https://github.com/mgsloan/yesod-media-simple";
      url = "";
      synopsis = "Simple display of media types, served by yesod";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.directory)
          (hsPkgs.JuicyPixels)
          (hsPkgs.vector)
          (hsPkgs.yesod)
        ];
      };
    };
  }