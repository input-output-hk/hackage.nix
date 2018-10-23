{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { example = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "wai-websockets";
        version = "3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Jasper Van der Jeugt, Ting-Yen Lai";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "Provide a bridge betweeen WAI and the websockets package.";
      description = "This is primarily intended for use with Warp and its settingsIntercept.";
      buildType = "Simple";
    };
    components = {
      "wai-websockets" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.wai)
          (hsPkgs.blaze-builder)
          (hsPkgs.case-insensitive)
          (hsPkgs.network)
          (hsPkgs.transformers)
          (hsPkgs.websockets)
          (hsPkgs.io-streams)
          (hsPkgs.http-types)
        ];
      };
      exes = {
        "wai-websockets-example" = {
          depends  = pkgs.lib.optionals (flags.example) [
            (hsPkgs.base)
            (hsPkgs.wai-websockets)
            (hsPkgs.websockets)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.blaze-builder)
            (hsPkgs.transformers)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.file-embed)
            (hsPkgs.io-streams)
            (hsPkgs.http-types)
          ];
        };
      };
    };
  }