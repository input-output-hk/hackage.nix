{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "naperian"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Aaron Vargo 2017";
      maintainer = "Aaron Vargo <fpfundamentalist@gmail.com>";
      author = "Aaron Vargo";
      homepage = "https://github.com/aaronvargo/naperian#readme";
      url = "";
      synopsis = "Efficient representable functors";
      description = "See the readme at <https://github.com/aaronvargo/naperian#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          (hsPkgs."adjunctions" or ((hsPkgs.pkgs-errors).buildDepError "adjunctions"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."streams" or ((hsPkgs.pkgs-errors).buildDepError "streams"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          ];
        buildable = true;
        };
      };
    }