{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yampa-gloss"; version = "0.2"; };
      license = "MIT";
      copyright = "(C) 2015-2018 Konstantin Saveljev, 2018 Ivan Perez";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Konstantin Saveljev <konstantin.saveljev@gmail.com>, Ivan Perez <ivan.perez@keera.co.uk>";
      homepage = "http://github.com/ivanperez-keera/yampa-gloss";
      url = "";
      synopsis = "A GLOSS backend for Yampa";
      description = "A Gloss backend for Yampa.\n\nGloss is a purely functional library to create pictures and animations.\nYampa is a Functional Reactive Programming DSL structured using arrow\ncombinators.\n\nThis library provides a function to create an interactive gloss animation\ndriven by a signal function that transforms a Gloss input signal into a Gloss\nPicture.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
          ];
        buildable = true;
        };
      exes = {
        "yampa-examples-gloss-rotatingcolor" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            (hsPkgs."yampa-gloss" or ((hsPkgs.pkgs-errors).buildDepError "yampa-gloss"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }