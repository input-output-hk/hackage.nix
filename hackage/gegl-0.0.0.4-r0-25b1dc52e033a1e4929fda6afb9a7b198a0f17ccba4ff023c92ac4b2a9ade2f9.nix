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
      identifier = { name = "gegl"; version = "0.0.0.4"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "nek0@nek0.eu";
      author = "nek0";
      homepage = "https://github.com/nek0/gegl#readme";
      url = "";
      synopsis = "Haskell bindings to GEGL library";
      description = "This package contains the Haskell bindings to the GEGL\nlibrary.\nThis library is still work in progress. This means that\neven minor version bumps may contain API breaking changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."inline-c" or (buildDepError "inline-c"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."babl" or (buildDepError "babl"))
          ];
        libs = [ (pkgs."gegl-0.3" or (sysDepError "gegl-0.3")) ];
        pkgconfig = [
          (pkgconfPkgs."gegl-0.3" or (pkgConfDepError "gegl-0.3"))
          ];
        };
      exes = {
        "example00" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gegl" or (buildDepError "gegl"))
            ];
          };
        "example01" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."gegl" or (buildDepError "gegl"))
            (hsPkgs."babl" or (buildDepError "babl"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            ];
          };
        "example02" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."gegl" or (buildDepError "gegl"))
            (hsPkgs."babl" or (buildDepError "babl"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            ];
          };
        };
      };
    }