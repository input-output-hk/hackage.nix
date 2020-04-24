{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { prof = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "PlayHangmanGame"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Haisheng Wu";
      maintainer = "freizl@gmail.com";
      author = "Haisheng Wu";
      homepage = "freizl.github.com";
      url = "";
      synopsis = "Play Hangman Game";
      description = "Write a program doing\n\n1. pick a list of words randomly\n\n2. play hangman agaist each of word\n\n3. the judgement are:\n- successful rate\n- wrong guess rate\n- running time";
      buildType = "Simple";
      };
    components = {
      exes = {
        "playHangmanGame" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }