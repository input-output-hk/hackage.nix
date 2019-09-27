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
    flags = { examples = false; use-pkg-config = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tcod-haskell"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/ncrashed/tcod-haskell#readme";
      url = "";
      synopsis = "Bindings to libtcod roguelike engine";
      description = "Haskell bindings for popular library for making roguelike games";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."inline-c" or (buildDepError "inline-c"))
          (hsPkgs."repa" or (buildDepError "repa"))
          (hsPkgs."sdl2" or (buildDepError "sdl2"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = (pkgs.lib).optional (!flags.use-pkg-config) (pkgs."tcod" or (sysDepError "tcod"));
        pkgconfig = (pkgs.lib).optional (flags.use-pkg-config) (pkgconfPkgs."libtcod" or (pkgConfDepError "libtcod"));
        buildable = true;
        };
      exes = {
        "tcod-haskell-sample01" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tcod-haskell" or (buildDepError "tcod-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        "tcod-haskell-sample02" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tcod-haskell" or (buildDepError "tcod-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        "tcod-haskell-sample03" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tcod-haskell" or (buildDepError "tcod-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }