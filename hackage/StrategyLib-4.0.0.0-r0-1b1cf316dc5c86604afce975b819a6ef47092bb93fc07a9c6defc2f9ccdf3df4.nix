{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "StrategyLib"; version = "4.0.0.0"; };
      license = "NONE";
      copyright = "";
      maintainer = "Samuel Bronson <naesten@gmail.com>";
      author = "";
      homepage = "http://naesten.dyndns.org:8080/repos/StrategyLib";
      url = "";
      synopsis = "";
      description = "attempt to convert Strafunski's StrategyLib to a heirarchical library";
      buildType = "Custom";
      };
    components = { "library" = { depends = [ (hsPkgs.base) (hsPkgs.mtl) ]; }; };
    }