{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "data-fin"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012--2014 wren gayle romano";
      maintainer = "wren@community.haskell.org";
      author = "wren gayle romano";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Finite totally ordered sets";
      description = "Finite totally ordered sets";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."prelude-safeenum" or ((hsPkgs.pkgs-errors).buildDepError "prelude-safeenum"))
          (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
          (hsPkgs."lazysmallcheck" or ((hsPkgs.pkgs-errors).buildDepError "lazysmallcheck"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }