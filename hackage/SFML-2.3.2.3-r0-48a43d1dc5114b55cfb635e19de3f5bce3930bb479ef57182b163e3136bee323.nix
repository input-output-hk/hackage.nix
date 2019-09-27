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
    flags = { officialcsfmlforwindows = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "SFML"; version = "2.3.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "jeannekamikaze@gmail.com";
      author = "Marc Sunet";
      homepage = "https://github.com/jeannekamikaze/SFML";
      url = "";
      synopsis = "SFML bindings";
      description = "Low level bindings for SFML 2.3.2.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = if system.isWindows
          then [
            (pkgs."csfml-window" or (sysDepError "csfml-window"))
            (pkgs."csfml-system" or (sysDepError "csfml-system"))
            (pkgs."csfml-graphics" or (sysDepError "csfml-graphics"))
            (pkgs."csfml-network" or (sysDepError "csfml-network"))
            (pkgs."csfml-audio" or (sysDepError "csfml-audio"))
            ]
          else [
            (pkgs."csfml-window" or (sysDepError "csfml-window"))
            (pkgs."csfml-system" or (sysDepError "csfml-system"))
            (pkgs."csfml-graphics" or (sysDepError "csfml-graphics"))
            (pkgs."csfml-network" or (sysDepError "csfml-network"))
            (pkgs."csfml-audio" or (sysDepError "csfml-audio"))
            (pkgs."sfml-window" or (sysDepError "sfml-window"))
            (pkgs."sfml-system" or (sysDepError "sfml-system"))
            (pkgs."sfml-graphics" or (sysDepError "sfml-graphics"))
            (pkgs."sfml-network" or (sysDepError "sfml-network"))
            (pkgs."sfml-audio" or (sysDepError "sfml-audio"))
            ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }