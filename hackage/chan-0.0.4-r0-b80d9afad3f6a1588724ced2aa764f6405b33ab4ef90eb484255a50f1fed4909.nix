{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "chan"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/chan#readme";
      url = "";
      synopsis = "Some extra kit for Chans";
      description = "Please see the README on Github at <https://github.com/athanclark/chan#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.async) (hsPkgs.base) (hsPkgs.stm) ]; };
      tests = {
        "chan-test" = {
          depends = [ (hsPkgs.async) (hsPkgs.base) (hsPkgs.chan) (hsPkgs.stm) ];
          };
        };
      };
    }