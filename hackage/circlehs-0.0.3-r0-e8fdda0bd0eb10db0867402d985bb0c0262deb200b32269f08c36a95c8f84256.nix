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
        name = "circlehs";
        version = "0.0.3";
      };
      license = "MIT";
      copyright = "2016 Denis Shevchenko";
      maintainer = "me@dshevchenko.biz";
      author = "Denis Shevchenko";
      homepage = "https://github.com/denisshevchenko/circlehs";
      url = "";
      synopsis = "The CircleCI REST API for Haskell";
      description = "The CircleCI REST API implementation in Haskell. For more info please see <https://circleci.com/docs/api/ official API reference>.\n\nBuilt with <http://hackage.haskell.org/package/servant Servant>.\n\n/Please note that implementation is incomplete yet./";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
        ];
      };
    };
  }