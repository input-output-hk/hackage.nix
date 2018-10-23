{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod-session-redis";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oliver Hunt";
      author = "Oliver Hunt";
      homepage = "https://github.com/ollieh/yesod-session-redis";
      url = "";
      synopsis = "Redis-Powered Sessions for Haskell";
      description = "Redis-Powered Sessions for Haskell";
      buildType = "Simple";
    };
    components = {
      "yesod-session-redis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.hedis)
          (hsPkgs.cookie)
          (hsPkgs.binary)
          (hsPkgs.pool-conduit)
          (hsPkgs.yesod-core)
          (hsPkgs.wai)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.random)
        ];
      };
    };
  }