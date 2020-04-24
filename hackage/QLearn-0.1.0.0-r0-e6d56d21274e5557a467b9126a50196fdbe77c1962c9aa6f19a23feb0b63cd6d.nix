{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "QLearn"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "dpandya@college.harvard.edu";
      author = "Dhaivat Pandya";
      homepage = "poincare.github.io/QLearn";
      url = "";
      synopsis = "A library for fast, easy-to-use Q-learning.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }