{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "markov-realization"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "2020 Alex Loomis";
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
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      tests = {
        "markov-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."markov-realization" or ((hsPkgs.pkgs-errors).buildDepError "markov-realization"))
            (hsPkgs."HTF" or ((hsPkgs.pkgs-errors).buildDepError "HTF"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            ];
          buildable = true;
          };
        };
      };
    }