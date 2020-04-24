{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Monaris"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinishota";
      homepage = "https://github.com/fumieval/Monaris/";
      url = "";
      synopsis = "A simple tetris clone";
      description = "A tetris clone written in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Monaris" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."vect" or ((hsPkgs.pkgs-errors).buildDepError "vect"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."free-game" or ((hsPkgs.pkgs-errors).buildDepError "free-game"))
            ];
          buildable = true;
          };
        };
      };
    }