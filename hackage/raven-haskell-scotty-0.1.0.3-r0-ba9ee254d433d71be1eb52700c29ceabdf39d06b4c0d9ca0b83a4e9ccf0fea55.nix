{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "raven-haskell-scotty"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "http://bitbucket.org/dpwiz/raven-haskell";
      url = "";
      synopsis = "Sentry http interface for Scotty web server.";
      description = "Utilities to log errors in Scotty actions using raven-haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.raven-haskell)
          (hsPkgs.scotty)
          (hsPkgs.wai)
          (hsPkgs.case-insensitive)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.mtl)
          ];
        };
      };
    }