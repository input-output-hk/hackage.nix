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
      specVersion = "1.12";
      identifier = { name = "nyx-game"; version = "1.0.1.0"; };
      license = "Apache-2.0";
      copyright = "2019 Gil Mizrahi";
      maintainer = "gilmi@posteo.net";
      author = "Gil Mizrahi";
      homepage = "";
      url = "";
      synopsis = "A bullet-hell game made with SDL2.";
      description = "A purely functional bullet-hell game made with SDL2. Visit https://gilmi.me/nyx for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."sdl2" or (buildDepError "sdl2"))
          (hsPkgs."sdl2-image" or (buildDepError "sdl2-image"))
          (hsPkgs."sdl2-mixer" or (buildDepError "sdl2-mixer"))
          (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "app" = {
          depends = [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."nyx-game" or (buildDepError "nyx-game"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."sdl2-image" or (buildDepError "sdl2-image"))
            (hsPkgs."sdl2-mixer" or (buildDepError "sdl2-mixer"))
            (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }