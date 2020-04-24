{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "tak-ai"; version = "0.1.0.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "henry@elsie.org.uk";
      author = "Henry Bucklow";
      homepage = "http://bitbucket.org/sffubs/tak";
      url = "";
      synopsis = "AI(s) for playing Tak on playtak.com";
      description = "Takky is a simple bot, using a modest lookahead of 4 plies, and a heuristic\nbased purely on territory owned. It hangs around on playtak.com, providing a\nmoderate challenge to new and intermediate players.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "takky" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tak" or ((hsPkgs.pkgs-errors).buildDepError "tak"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            ];
          buildable = true;
          };
        };
      tests = {
        "takky-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tak" or ((hsPkgs.pkgs-errors).buildDepError "tak"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }