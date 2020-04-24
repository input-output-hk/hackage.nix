{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "markov-realization"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Alex Loomis";
      maintainer = "atloomis@math.arizona.edu";
      author = "Alex Loomis";
      homepage = "https://github.com/alexloomis/markov";
      url = "";
      synopsis = "Realizations of Markov chains.";
      description = "Please see the README on GitHub at <https://github.com/alexloomis/markov#markov-tutorial>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."configuration-tools" or ((hsPkgs.pkgs-errors).buildDepError "configuration-tools"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."discrimination" or ((hsPkgs.pkgs-errors).buildDepError "discrimination"))
          (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
          (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      tests = {
        "markov-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HTF" or ((hsPkgs.pkgs-errors).buildDepError "HTF"))
            (hsPkgs."markov-realization" or ((hsPkgs.pkgs-errors).buildDepError "markov-realization"))
            ];
          buildable = true;
          };
        };
      };
    }