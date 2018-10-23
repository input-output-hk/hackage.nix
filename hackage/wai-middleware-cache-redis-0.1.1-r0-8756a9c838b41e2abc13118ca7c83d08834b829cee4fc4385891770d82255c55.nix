{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "wai-middleware-cache-redis";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Dorofeev <aka.spin@gmail.com>";
      author = "Alexander Dorofeev <aka.spin@gmail.com>";
      homepage = "https://github.com/akaspin/wai-middleware-cache-redis";
      url = "";
      synopsis = "Redis backend for wai-middleware-cache";
      description = "This package provides Redis backend for wai-middleware-cache";
      buildType = "Simple";
    };
    components = {
      "wai-middleware-cache-redis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.cryptohash)
          (hsPkgs.hedis)
          (hsPkgs.hedis-pile)
          (hsPkgs.hex)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-middleware-cache)
        ];
      };
    };
  }