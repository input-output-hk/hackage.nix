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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "astrds"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Clara Loeh <darcs@wuisch.org>";
      author = "Clara Loeh <darcs@wuisch.org>,\nAndres Loeh <ksastrds@andres-loeh.de>";
      homepage = "";
      url = "";
      synopsis = "an incomplete 2d space game";
      description = "astrds is an intentionally incomplete 2d space game. The code\nis intended to be a playground for Haskell programmers who want\nto add their own features and extensions. The\nimplementation is based on SDL and OpenGL and includes\nsimple audio and joystick support.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "astrds" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-ttf" or (buildDepError "SDL-ttf"))
            (hsPkgs."SDL-image" or (buildDepError "SDL-image"))
            (hsPkgs."SDL-mixer" or (buildDepError "SDL-mixer"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        };
      };
    }