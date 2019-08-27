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
    flags = { example = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2-gfx"; version = "0.2"; };
      license = "MIT";
      copyright = "Copyright © 2015 Siniša Biđin";
      maintainer = "Siniša Biđin <sinisa@bidin.eu>";
      author = "Siniša Biđin <sinisa@bidin.eu>";
      homepage = "";
      url = "";
      synopsis = "Bindings to SDL2_gfx.";
      description = "Haskell bindings to SDL2_gfx.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."sdl2" or (buildDepError "sdl2"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        pkgconfig = [
          (pkgconfPkgs."sdl2" or (pkgConfDepError "sdl2"))
          (pkgconfPkgs."SDL2_gfx" or (pkgConfDepError "SDL2_gfx"))
          ];
        };
      exes = {
        "sdl2-gfx-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."sdl2-gfx" or (buildDepError "sdl2-gfx"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }