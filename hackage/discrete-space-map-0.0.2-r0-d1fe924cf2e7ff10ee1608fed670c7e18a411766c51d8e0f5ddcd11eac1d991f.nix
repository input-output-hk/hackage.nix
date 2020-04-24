{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "discrete-space-map"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "https://github.com/sjoerdvisscher/discrete-space-map";
      url = "";
      synopsis = "A discrete space map.";
      description = "A discrete space map implemented as a zipper on an infinite perfect binary tree.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."keys" or ((hsPkgs.pkgs-errors).buildDepError "keys"))
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          (hsPkgs."adjunctions" or ((hsPkgs.pkgs-errors).buildDepError "adjunctions"))
          ];
        buildable = true;
        };
      };
    }