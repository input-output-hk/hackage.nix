{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "freer-simple-catching"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Ben Weitzman, Co-Star Astrology";
      maintainer = "ben@costarastrology.com";
      author = "Ben Weitzman";
      homepage = "";
      url = "";
      synopsis = "Checked runtime exceptions with freer-simple";
      description = "Please see the README on Gitlab at <https://gitlab.com/costar-astrology/freer-simple-contrib/tree/master/freer-simple-catching>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.freer-simple) ]; };
      tests = {
        "freer-simple-catching-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.freer-simple)
            (hsPkgs.freer-simple-catching)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }