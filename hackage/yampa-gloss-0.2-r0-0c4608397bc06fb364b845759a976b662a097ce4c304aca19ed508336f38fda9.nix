let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."gloss" or (buildDepError "gloss"))
          (hsPkgs."Yampa" or (buildDepError "Yampa"))
          ];
        };
      exes = {
        "yampa-examples-gloss-rotatingcolor" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            (hsPkgs."yampa-gloss" or (buildDepError "yampa-gloss"))
            ];
          };
        };
      };
    }