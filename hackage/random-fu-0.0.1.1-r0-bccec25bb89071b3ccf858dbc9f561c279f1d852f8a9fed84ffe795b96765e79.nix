{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "random-fu"; version = "0.0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/random-fu";
      url = "";
      synopsis = "Random number generation";
      description = "Random number generation based on orthogonal typeclasses\nfor entropy sources and random variable distributions, all\nserved up on a monadic platter.  Aspires to be useful\nin an idiomatic way in both \\\"pure\\\" and \\\"impure\\\" styles,\nas well as reasonably fast.  May not yet meet the latter\ngoal, but I think the former is starting to shape up\nnicely.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."stateref" or ((hsPkgs.pkgs-errors).buildDepError "stateref"))
          ];
        buildable = true;
        };
      };
    }