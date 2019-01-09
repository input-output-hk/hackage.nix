{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unboxed"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carter at wellposed dot com";
      author = "Carter Tazio Schonwald";
      homepage = "github.com/cartazio/unboxed";
      url = "";
      synopsis = "All the standard sum types but strict and unboxed as possible";
      description = "experimental package for unlifted / unboxed sum types. Expect dicoveries of new ways to make GHC cry.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.ghc-prim) ]; };
      };
    }