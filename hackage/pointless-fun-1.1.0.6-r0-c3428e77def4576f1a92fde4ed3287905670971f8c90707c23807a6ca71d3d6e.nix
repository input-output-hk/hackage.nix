{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "pointless-fun"; version = "1.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009--2015 wren gayle romano";
      maintainer = "wren@community.haskell.org";
      author = "wren gayle romano, Matt Hellige";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Some common point-free combinators.";
      description = "Some common point-free combinators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }