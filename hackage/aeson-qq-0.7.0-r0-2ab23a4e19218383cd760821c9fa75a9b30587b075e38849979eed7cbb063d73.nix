{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "aeson-qq"; version = "0.7.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Oscar Finnsson";
      homepage = "http://github.com/zalora/aeson-qq";
      url = "";
      synopsis = "JSON quasiquoter for Haskell";
      description = "@aeson-qq@ provides a JSON quasiquoter for Haskell.\n\nThis package exposes the function `aesonQQ` that compile-time\nconverts a string representation of a JSON value into a\n`Data.Aeson.Value`.  `aesonQQ` has the signature\n\n>aesonQQ :: QuasiQuoter\n\nConsult the @README@ for documentation:\n<https://github.com/zalora/aeson-qq#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson-qq)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }