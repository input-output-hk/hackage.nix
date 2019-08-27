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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2-ttf"; version = "2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013-2017 Ömer Sinan Ağacan, Siniša Biđin, Rongcui Dong";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Rongcui Dong (rongcuid@outlook.com),\nSiniša Biđin <sinisa@bidin.eu>,\nÖmer Sinan Ağacan (omeragacan@gmail.com),\nSean Chalmers (sclhiannan@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Bindings to SDL2_ttf.";
      description = "Haskell bindings to SDL2_ttf C++ library <http://www.libsdl.org/projects/SDL_ttf/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."sdl2" or (buildDepError "sdl2"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        pkgconfig = [
          (pkgconfPkgs."sdl2" or (pkgConfDepError "sdl2"))
          (pkgconfPkgs."SDL2_ttf" or (pkgConfDepError "SDL2_ttf"))
          ];
        };
      exes = {
        "sdl2-ttf-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }