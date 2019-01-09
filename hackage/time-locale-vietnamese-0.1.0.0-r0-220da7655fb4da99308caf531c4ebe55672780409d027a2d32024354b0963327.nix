{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "time-locale-vietnamese"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2017 Tung Dao";
      maintainer = "me@tungdao.com";
      author = "Tung Dao";
      homepage = "https://github.com/tungd/time-locale-vietnamese#readme";
      url = "";
      synopsis = "";
      description = "Vietnamese locale for date and time format";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.time) ]; };
      };
    }