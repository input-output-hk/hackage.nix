{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "counter"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "wei2912.supp0rt@gmail.com";
      author = "Wei En";
      homepage = "https://github.com/wei2912/counter";
      url = "";
      synopsis = "An object frequency counter.";
      description = "This project provides an efficient object frequency counter, based upon Data.Map.Strict.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      };
    }