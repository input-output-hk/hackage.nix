{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "raven-haskell"; version = "0.1.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.uuid)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.http-conduit)
          (hsPkgs.network)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.raven-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.unordered-containers)
            (hsPkgs.aeson)
            ];
          };
        };
      };
    }