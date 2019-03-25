{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "japanese-holidays"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 TANIGUCHI Kohei";
      maintainer = "a.d.xvii.kal.mai@gmail.com";
      author = "TANIGUCHI Kohei";
      homepage = "https://github.com/cohei/japanese-holidays#readme";
      url = "";
      synopsis = "Japanese holidays utility";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.time) ]; };
      tests = {
        "doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.time) ];
          };
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.japanese-holidays)
            (hsPkgs.time)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }