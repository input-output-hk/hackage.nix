{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rlist"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 guaraqe";
      maintainer = "guaraqe@openmailbox.org";
      author = "guaraqe";
      homepage = "http://github.com/guaraqe/rlist#readme";
      url = "";
      synopsis = "Lists with cheap snocs";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }