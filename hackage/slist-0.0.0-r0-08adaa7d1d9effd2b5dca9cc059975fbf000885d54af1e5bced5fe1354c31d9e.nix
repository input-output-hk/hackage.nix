{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "slist"; version = "0.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 Veronika Romashkina";
      maintainer = "vrom911@gmail.com";
      author = "Veronika Romashkina";
      homepage = "https://github.com/vrom911/slist";
      url = "";
      synopsis = "Sized list";
      description = "This package implements @Slist@ data structure that stores the size\nof the list along with the list itself.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "slist-test" = { depends = [ (hsPkgs.base) (hsPkgs.slist) ]; };
        "slist-doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.Glob) ];
          };
        };
      };
    }