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
      specVersion = "0";
      identifier = { name = "lambdabot"; version = "4.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "BotPP" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."fps" or (buildDepError "fps"))
            ];
          buildable = true;
          };
        "lambdabot" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."fps" or (buildDepError "fps"))
            ];
          buildable = true;
          };
        "hoogle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."fps" or (buildDepError "fps"))
            ];
          buildable = true;
          };
        "djinn" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."fps" or (buildDepError "fps"))
            ];
          buildable = true;
          };
        "unlambda" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."fps" or (buildDepError "fps"))
            ];
          buildable = true;
          };
        "runplugs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."fps" or (buildDepError "fps"))
            ];
          buildable = true;
          };
        };
      };
    }