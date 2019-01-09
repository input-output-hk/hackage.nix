{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "arraylist"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "copyright (c) 2018 andrewthad";
      maintainer = "chessai1996@gmail.com";
      author = "andrewthad";
      homepage = "https://github.com/chessai/arraylist";
      url = "";
      synopsis = "Memory-efficient ArrayList implementation";
      description = "An ArrayList that carries information about the amount of data in it\nthat is actually used, and tries to keep space usage to a minimum.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.primitive) (hsPkgs.initialize) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.arraylist)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.smallcheck)
            (hsPkgs.primitive)
            (hsPkgs.hashable)
            (hsPkgs.MonadRandom)
            ];
          };
        };
      };
    }