{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "markov-realization"; version = "0.1.0"; };
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
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."discrimination" or ((hsPkgs.pkgs-errors).buildDepError "discrimination"))
          (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      };
    }