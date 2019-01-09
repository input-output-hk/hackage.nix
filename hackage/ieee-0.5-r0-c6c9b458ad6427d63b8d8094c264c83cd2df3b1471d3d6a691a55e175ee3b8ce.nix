{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0";
      identifier = { name = "ieee"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009. Patrick Perry <patperry@gmail.com>";
      maintainer = "Patrick Perry <patperry@gmail.com>";
      author = "Patrick Perry";
      homepage = "http://github.com/patperry/ieee";
      url = "";
      synopsis = "Approximate comparisons for IEEE floating point numbers";
      description = "Approximate comparison of floating point numbers based on the\nalgorithm in Section 4.2.2 of Knuth's _Seminumerical Algorithms_,\nNaN-aware minimum and maximum, and a type class for approximate\ncomparisons.\n";
      buildType = "Custom";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }