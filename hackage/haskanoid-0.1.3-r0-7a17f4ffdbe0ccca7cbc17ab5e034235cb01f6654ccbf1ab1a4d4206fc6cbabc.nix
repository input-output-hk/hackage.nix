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
    flags = { wiimote = true; kinect = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "haskanoid"; version = "0.1.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez and Henrik Nilsson";
      homepage = "http://github.com/ivanperez-keera/haskanoid";
      url = "";
      synopsis = "A breakout game written in Yampa using SDL";
      description = "An arkanoid game featuring SDL graphics and sound, and\nWiimote & Kinect support, implemented using Yampa.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskanoid" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-image" or (buildDepError "SDL-image"))
            (hsPkgs."SDL-mixer" or (buildDepError "SDL-mixer"))
            (hsPkgs."SDL-ttf" or (buildDepError "SDL-ttf"))
            (hsPkgs."IfElse" or (buildDepError "IfElse"))
            ] ++ (pkgs.lib).optional (flags.wiimote) (hsPkgs."hcwiid" or (buildDepError "hcwiid"))) ++ (pkgs.lib).optionals (flags.kinect) [
            (hsPkgs."freenect" or (buildDepError "freenect"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }