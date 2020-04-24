{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "markov-processes"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Vikram Verma <me@vikramverma.com>";
      author = "Leopold Tal G <leopold.tal.dg@gmail.com>, Yorick van Pelt <yorickvanpelt@gmail.com>, Vikram Verma <me@vikramverma.com>";
      homepage = "";
      url = "";
      synopsis = "Hidden Markov processes.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."memoize" or ((hsPkgs.pkgs-errors).buildDepError "memoize"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "markov-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
            (hsPkgs."assertions" or ((hsPkgs.pkgs-errors).buildDepError "assertions"))
            (hsPkgs."markov-processes" or ((hsPkgs.pkgs-errors).buildDepError "markov-processes"))
            (hsPkgs."memoize" or ((hsPkgs.pkgs-errors).buildDepError "memoize"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }