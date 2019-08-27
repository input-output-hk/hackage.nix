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
    flags = {
      verbose = false;
      debug = false;
      warn = false;
      error = false;
      examples = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "affection"; version = "0.0.0.9"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "nek0@chelnok.de";
      author = "nek0";
      homepage = "https://github.com/nek0/affection#readme";
      url = "";
      synopsis = "A simple Game Engine using SDL";
      description = "This package contains Affection, a simple game engine\nwritten in Haskell using SDL.\nThis Engine is still work in progress and even minor\nversion bumps may contain breaking api changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."sdl2" or (buildDepError "sdl2"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."monad-parallel" or (buildDepError "monad-parallel"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "example00" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."affection" or (buildDepError "affection"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        "example01" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."affection" or (buildDepError "affection"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."nanovg" or (buildDepError "nanovg"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          };
        };
      };
    }