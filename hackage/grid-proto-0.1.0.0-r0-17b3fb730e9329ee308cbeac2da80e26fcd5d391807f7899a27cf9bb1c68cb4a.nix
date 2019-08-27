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
      identifier = { name = "grid-proto"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Joe Vargas";
      maintainer = "joevargas92@gmail.com";
      author = "Joe Vargas";
      homepage = "https://github.com/jxv/grid-proto#readme";
      url = "";
      synopsis = "Grid-based prototyping framework";
      description = "Grid-based prototyping framework. Useful for games.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."StateVar" or (buildDepError "StateVar"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."sdl2" or (buildDepError "sdl2"))
          (hsPkgs."sdl2-fps" or (buildDepError "sdl2-fps"))
          (hsPkgs."sdl2-gfx" or (buildDepError "sdl2-gfx"))
          (hsPkgs."sdl2-mixer" or (buildDepError "sdl2-mixer"))
          (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "arrows-example" = {
          depends = [
            (hsPkgs."StateVar" or (buildDepError "StateVar"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."grid-proto" or (buildDepError "grid-proto"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."sdl2-fps" or (buildDepError "sdl2-fps"))
            (hsPkgs."sdl2-gfx" or (buildDepError "sdl2-gfx"))
            (hsPkgs."sdl2-mixer" or (buildDepError "sdl2-mixer"))
            (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "board-example" = {
          depends = [
            (hsPkgs."StateVar" or (buildDepError "StateVar"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."grid-proto" or (buildDepError "grid-proto"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."sdl2-fps" or (buildDepError "sdl2-fps"))
            (hsPkgs."sdl2-gfx" or (buildDepError "sdl2-gfx"))
            (hsPkgs."sdl2-mixer" or (buildDepError "sdl2-mixer"))
            (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "controller-example" = {
          depends = [
            (hsPkgs."StateVar" or (buildDepError "StateVar"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."grid-proto" or (buildDepError "grid-proto"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."sdl2-fps" or (buildDepError "sdl2-fps"))
            (hsPkgs."sdl2-gfx" or (buildDepError "sdl2-gfx"))
            (hsPkgs."sdl2-mixer" or (buildDepError "sdl2-mixer"))
            (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "text-example" = {
          depends = [
            (hsPkgs."StateVar" or (buildDepError "StateVar"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."grid-proto" or (buildDepError "grid-proto"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."sdl2-fps" or (buildDepError "sdl2-fps"))
            (hsPkgs."sdl2-gfx" or (buildDepError "sdl2-gfx"))
            (hsPkgs."sdl2-mixer" or (buildDepError "sdl2-mixer"))
            (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }