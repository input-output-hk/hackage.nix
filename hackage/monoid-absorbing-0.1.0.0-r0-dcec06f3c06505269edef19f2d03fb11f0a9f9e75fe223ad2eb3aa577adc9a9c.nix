{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "monoid-absorbing"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015 Maciej Piróg";
      maintainer = "maciej.adam.pirog@gmail.com";
      author = "Maciej Piróg";
      homepage = "http://github.com/maciejpirog/monoid-absorbing";
      url = "";
      synopsis = "A library for (left, right) zero monoids and backtracking with cut";
      description = "A library for (left, right) zero monoids, that is, monoids with (left, right) absorbing elements. Includes free constructions of those and a list monad transformer with Prolog's cut operator, which is related to the theory of right zero monoids.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }