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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2-compositor"; version = "1.2.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2015  Sebastian Jordan";
      maintainer = "sebastian.jordan.mail@googlemail.com";
      author = "Sebastian Jordan";
      homepage = "";
      url = "";
      synopsis = "image compositing with sdl2 - declarative style";
      description = "This package provides tools for simple image composition\nthrough the means of the SDL library, version 2.  You can\ncombine, translate, rotate, blend, modulate colors and\ndraw in a declarative way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."sdl2" or (buildDepError "sdl2"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."lrucache" or (buildDepError "lrucache"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."StateVar" or (buildDepError "StateVar"))
          ];
        };
      exes = {
        "sdl2-comp-example" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."lrucache" or (buildDepError "lrucache"))
            (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."StateVar" or (buildDepError "StateVar"))
            ];
          };
        "sdl2-comp-res-independent" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."lrucache" or (buildDepError "lrucache"))
            (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."StateVar" or (buildDepError "StateVar"))
            ];
          };
        };
      };
    }