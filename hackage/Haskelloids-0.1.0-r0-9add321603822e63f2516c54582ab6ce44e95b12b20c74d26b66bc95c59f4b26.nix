{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Haskelloids"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mrehayden@googlemail.com";
      author = "Matthew Hayden";
      homepage = "http://www.matthewhayden.co.uk";
      url = "";
      synopsis = "A reproduction of the Atari 1979 classic \"Asteroids\"";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Haskelloids" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."HGL" or ((hsPkgs.pkgs-errors).buildDepError "HGL"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            ];
          buildable = true;
          };
        };
      };
    }