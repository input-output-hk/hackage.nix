{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yampa-gloss"; version = "0.1.0.0"; };
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
        depends = [ (hsPkgs.base) (hsPkgs.gloss) (hsPkgs.Yampa) ];
        };
      exes = {
        "yampa-examples-gloss-rotatingcolor" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.Yampa)
            (hsPkgs.yampa-gloss)
            ];
          };
        };
      };
    }