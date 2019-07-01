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
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.configuration-tools)
          (hsPkgs.contravariant)
          (hsPkgs.discrimination)
          (hsPkgs.generic-deriving)
          (hsPkgs.matrix)
          (hsPkgs.MonadRandom)
          ];
        };
      tests = {
        "markov-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.HTF) (hsPkgs.markov-realization) ];
          };
        };
      };
    }