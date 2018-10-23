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
        name = "raven-haskell";
        version = "0.1.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/raven-haskell";
      url = "";
      synopsis = "Haskell client for Sentry logging service.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "raven-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.http-conduit)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.raven-haskell)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }