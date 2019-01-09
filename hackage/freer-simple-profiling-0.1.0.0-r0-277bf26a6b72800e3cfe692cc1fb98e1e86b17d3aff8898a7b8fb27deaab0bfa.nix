{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "freer-simple-profiling"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Ben Weitzman";
      maintainer = "ben@costarastrology.com";
      author = "Ben Weitzman";
      homepage = "";
      url = "";
      synopsis = "Automatic profling of freer-simple programs";
      description = "Please see the README on GitHub at <https://gitlab.com/costar-astrology/freer-simple-contrib/tree/master/freer-simple-http>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.freer-simple)
          (hsPkgs.time)
          ];
        };
      tests = {
        "freer-simple-profiling-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.freer-simple)
            (hsPkgs.freer-simple-profiling)
            (hsPkgs.hspec)
            (hsPkgs.time)
            ];
          };
        };
      };
    }