{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hero-club-five-tenets"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "d.kupanhy@gmail.com";
      author = "I am D.";
      homepage = "http://github.com/i-amd3/hero-club-five-tenets";
      url = "";
      synopsis = "Remember the five tenets of hero club";
      description = "This package give you Hero Club Five Tenets, Yuki Yuna is a Hero.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "fivetenets" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."hero-club-five-tenets" or ((hsPkgs.pkgs-errors).buildDepError "hero-club-five-tenets"))
            ];
          buildable = true;
          };
        };
      };
    }