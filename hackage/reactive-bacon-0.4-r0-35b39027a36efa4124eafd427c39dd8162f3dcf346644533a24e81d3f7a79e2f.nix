{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reactive-bacon"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "juha.paananen@gmail.com";
      author = "Juha Paananen";
      homepage = "http://github.com/raimohanska/reactive-bacon";
      url = "";
      synopsis = "FRP (functional reactive programming) framework";
      description = "FRP (functional reactive programming) framework inspired by RX, reactive-banana and Iteratee";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.stm) (hsPkgs.old-time) ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.old-time)
            (hsPkgs.stm)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }