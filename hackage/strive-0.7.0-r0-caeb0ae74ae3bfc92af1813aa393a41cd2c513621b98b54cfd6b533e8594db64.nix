{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "strive";
        version = "0.7.0";
      };
      license = "MIT";
      copyright = "2015 Taylor Fausak <taylor@fausak.me>";
      maintainer = "taylor@fausak.me";
      author = "Taylor Fausak";
      homepage = "http://taylor.fausak.me/strive/";
      url = "";
      synopsis = "A Haskell client for the Strava V3 API.";
      description = "A Haskell client for the <http://strava.github.io/api/ Strava V3 API>.\n\nCheck out <https://github.com/tfausak/strive#readme the readme> for complete documentation.";
      buildType = "Simple";
    };
    components = {
      "strive" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.gpolyline)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "readme" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.strive)
            (hsPkgs.bytestring)
            (hsPkgs.markdown-unlit)
            (hsPkgs.time)
          ];
        };
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }